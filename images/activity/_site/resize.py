#!/usr/bin/env python3
from pathlib import Path
from PIL import Image
import argparse
import os
import sys
import tempfile

def resize_in_place(path: Path, max_side: int, quality: int, backup: bool) -> None:
    if not path.exists():
        print(f"[skip] not found: {path}", file=sys.stderr)
        return
    if path.suffix.lower() not in {".jpg", ".jpeg"}:
        print(f"[skip] not a jpg/jpeg: {path}", file=sys.stderr)
        return

    # Optional backup (only once)
    if backup:
        bak = path.with_suffix(path.suffix + ".bak")
        if not bak.exists():
            bak.write_bytes(path.read_bytes())
            print(f"[bak]  {bak.name}")

    with Image.open(path) as im:
        im = im.convert("RGB")
        w, h = im.size

        if max(w, h) > max_side:
            scale = max_side / float(max(w, h))
            new_size = (int(w * scale), int(h * scale))
            im = im.resize(new_size, Image.Resampling.LANCZOS)

        # Write to a temp file in the SAME directory, then replace atomically
        tmp_fd, tmp_name = tempfile.mkstemp(prefix=path.stem + "_", suffix=".jpg", dir=str(path.parent))
        os.close(tmp_fd)
        tmp_path = Path(tmp_name)

        try:
            im.save(
                tmp_path,
                format="JPEG",
                quality=quality,
                optimize=True,
                progressive=True,
            )
            tmp_path.replace(path)  # atomic replace on same filesystem
        finally:
            # If something failed before replace, clean up tmp
            if tmp_path.exists() and tmp_path != path:
                try:
                    tmp_path.unlink()
                except OSError:
                    pass

    print(f"[ok] {path.name}: {w}x{h} -> {im.size[0]}x{im.size[1]} (overwritten)")

def main():
    ap = argparse.ArgumentParser(description="Resize/compress specified JPGs in-place.")
    ap.add_argument("images", nargs="+", help="Input image files (e.g., a.jpg b.jpg)")
    ap.add_argument("--max-side", type=int, default=1600, help="Max pixels for the longest side")
    ap.add_argument("--quality", type=int, default=75, help="JPEG quality (1-95)")
    ap.add_argument("--backup", action="store_true", help="Create a .bak backup next to each image")
    args = ap.parse_args()

    for img in args.images:
        resize_in_place(Path(img), args.max_side, args.quality, args.backup)

if __name__ == "__main__":
    main()