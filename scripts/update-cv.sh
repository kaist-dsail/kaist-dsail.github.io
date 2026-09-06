#!/usr/bin/env bash
# Sync the CV from the Overleaf git clone, compile it, and drop the PDF into the site.
#
#   scripts/update-cv.sh            pull from Overleaf, compile, copy to files/CV.pdf
#   scripts/update-cv.sh --no-pull  skip the pull (use the working tree as-is)
#   scripts/update-cv.sh --push     also push local .tex edits back to Overleaf
#
# Override the clone location with:  CV_REPO=/path/to/clone scripts/update-cv.sh
set -euo pipefail

SITE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CV_REPO="${CV_REPO:-$(cd "$SITE/.." && pwd)/cv-overleaf}"
OUT="$SITE/files/CV.pdf"
export PATH="/Library/TeX/texbin:$PATH"

PULL=1; PUSH=0
for a in "$@"; do
  case "$a" in
    --no-pull) PULL=0 ;;
    --push)    PUSH=1 ;;
    *) echo "unknown option: $a" >&2; exit 2 ;;
  esac
done

if [ ! -d "$CV_REPO/.git" ]; then
  cat >&2 <<MSG
error: no Overleaf clone at $CV_REPO

One-time setup — run this yourself so git can prompt for the token:
  git clone https://git.overleaf.com/<PROJECT_ID> "$CV_REPO"
    username: git
    password: <your Overleaf git token>
  (Overleaf: project menu -> Integrations -> Git shows the exact URL.
   Token: https://www.overleaf.com/user/settings)
MSG
  exit 1
fi

command -v latexmk >/dev/null || { echo "error: latexmk not found (expected in /Library/TeX/texbin)" >&2; exit 1; }

if [ "$PUSH" = 1 ]; then
  echo "==> pushing local edits to Overleaf"
  git -C "$CV_REPO" push
fi

if [ "$PULL" = 1 ]; then
  echo "==> pulling from Overleaf"
  git -C "$CV_REPO" pull --rebase
fi

# main .tex = the one containing \documentclass (prefer cv.tex / main.tex)
MAIN="${CV_MAIN:-}"
if [ -z "$MAIN" ]; then
  # the .tex that actually declares the document (case as stored on disk)
  MAIN="$(cd "$CV_REPO" && grep -l '\\documentclass' -- *.tex 2>/dev/null | head -1)"
fi
[ -n "$MAIN" ] || { echo "error: no .tex with \\documentclass in $CV_REPO" >&2; exit 1; }

# engine: honour the "% !TEX TS-program" magic comment, else sniff fontspec
ENGINE="${CV_ENGINE:-}"
if [ -z "$ENGINE" ]; then
  case "$(head -5 "$CV_REPO/$MAIN" | tr 'A-Z' 'a-z')" in
    *lualatex*) ENGINE=lualatex ;;
    *xelatex*)  ENGINE=xelatex  ;;
  esac
fi
if [ -z "$ENGINE" ] && grep -qs 'usepackage.*fontspec' "$CV_REPO"/*.tex "$CV_REPO"/*.cls; then
  ENGINE=xelatex
fi
ENGINE="${ENGINE:-pdflatex}"
case "$ENGINE" in
  xelatex)  LMK_FLAG=-xelatex  ;;
  lualatex) LMK_FLAG=-lualatex ;;
  *)        LMK_FLAG=-pdf      ;;
esac
echo "==> compiling $MAIN with $ENGINE"

BUILD="$CV_REPO/.build"
rm -rf "$BUILD"          # stale latexmk state silently pins the wrong engine
mkdir -p "$BUILD"
# keep build artefacts out of the Overleaf project, without adding a file to it
EXCL="$(git -C "$CV_REPO" rev-parse --absolute-git-dir)/info/exclude"
grep -qxF '.build/' "$EXCL" 2>/dev/null || echo '.build/' >> "$EXCL"
(cd "$CV_REPO" && latexmk "$LMK_FLAG" -f -interaction=nonstopmode \
   -outdir=.build "$MAIN" >"$BUILD/latexmk.log" 2>&1) || true

PDF="$BUILD/${MAIN%.tex}.pdf"
if [ ! -f "$PDF" ]; then
  echo "error: LaTeX produced no PDF — errors from the log:" >&2
  grep -A3 "^!" "$BUILD/latexmk.log" | head -30 >&2 || tail -30 "$BUILD/latexmk.log" >&2
  echo "   full log: $BUILD/latexmk.log" >&2
  exit 1
fi
NERR=$(grep -c "^!" "$BUILD/latexmk.log" || true)
[ "$NERR" -gt 0 ] && echo "    (note: $NERR LaTeX warnings/errors in the log; Overleaf reports the same ones)"

OLD_SIZE=0; [ -f "$OUT" ] && OLD_SIZE=$(wc -c <"$OUT")
cp "$PDF" "$OUT"
NEW_SIZE=$(wc -c <"$OUT")

echo "==> files/CV.pdf updated  (${OLD_SIZE} -> ${NEW_SIZE} bytes)"
echo "    site link: /files/CV.pdf   (commit it to publish)"
