#!/usr/bin/env python3
from pathlib import Path
from PIL import Image
import argparse
import sys

def process_one(path: Path, out_dir: Path, max_side: int, quality: int) -> None:
    if not path.exists():
        print(f"[skip] not found: {path}", file=sys.stderr)
        return
    if path.suffix.lower() not in {".jpg", ".jpeg"}:
        print(f"[skip] not a jpg/jpeg: {path}", file=sys.stderr)
        return

    with Image.open(path) as im:
        im = im.convert("RGB")
        w, h = im.size

        if max(w, h) > max_side:
            scale = max_side / float(max(w, h))
            new_size = (int(w * scale), int(h * scale))
            im = im.resize(new_size, Image.Resampling.LANCZOS)

        out_path = out_dir / (path.stem + ".jpg")  # force .jpg extension
        im.save(
            out_path,
            format="JPEG",
            quality=quality,
            optimize=True,
            progressive=True,
        )

        print(f"{path.name}: {w}x{h} -> {im.size[0]}x{im.size[1]}  saved: {out_path}")

def main():
    ap = argparse.ArgumentParser(description="Resize/compress only specified JPG images.")
    ap.add_argument("images", nargs="+", help="Input image files (e.g., a.jpg b.jpg)")
    ap.add_argument("--out", default="web", help="Output directory (default: web)")
    ap.add_argument("--max-side", type=int, default=1600, help="Max pixels for the longest side")
    ap.add_argument("--quality", type=int, default=75, help="JPEG quality (1-95)")
    args = ap.parse_args()

    out_dir = Path(args.out)
    out_dir.mkdir(parents=True, exist_ok=True)

    for img in args.images:
        process_one(Path(img), out_dir, args.max_side, args.quality)

if __name__ == "__main__":
    main()