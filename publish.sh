#!/usr/bin/env bash
# One-step publish for the Evidence notes repo. Pages redeploys (~1 min).
set -e
export PATH="/opt/homebrew/bin:$PATH"
cd "$(dirname "$0")"
MSG="${1:-Update EVI101 study notes}"
git add -A
if git diff --cached --quiet; then echo "nothing to publish"; exit 0; fi
git commit -q -m "$MSG"
git push -q origin main
echo "published → https://yaseeny933.github.io/evi101-notes/"
