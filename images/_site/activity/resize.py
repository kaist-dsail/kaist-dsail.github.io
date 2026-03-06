from pathlib import Path
from PIL import Image

SRC = Path(".")
OUT = Path("web")
OUT.mkdir(exist_ok=True)

MAX_SIDE = 1600   # pick 1200–2000 depending on your site
QUALITY = 75

for p in SRC.glob("*.jpg"):
    with Image.open(p) as im:
        im = im.convert("RGB")
        w, h = im.size

        if max(w, h) > MAX_SIDE:
            scale = MAX_SIDE / float(max(w, h))
            new_size = (int(w * scale), int(h * scale))
            im = im.resize(new_size, Image.Resampling.LANCZOS)

        im.save(
            OUT / p.name,
            "JPEG",
            quality=QUALITY,
            optimize=True,
            progressive=True,
        )
        print(f"{p.name}: {w}x{h} -> {im.size[0]}x{im.size[1]}")