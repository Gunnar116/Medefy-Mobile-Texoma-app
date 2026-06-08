#!/usr/bin/env bash
#
# sync-and-deploy.sh
# Copies the latest Texoma prototype from the Medefy mobile-app repo into this
# repo as index.html, commits, and pushes. GitHub Pages rebuilds in ~1 min.
#
# Usage:
#   ./sync-and-deploy.sh                 # default commit message
#   ./sync-and-deploy.sh "your message"  # custom commit message
#
set -euo pipefail

SRC="$HOME/Code/mobile-app/texoma-chat-prototype.html"
REPO_DIR="$HOME/Code/Medefy-Mobile-Texoma-app"
DEST="$REPO_DIR/index.html"
LIVE_URL="https://gunnar116.github.io/Medefy-Mobile-Texoma-app/"

if [[ ! -f "$SRC" ]]; then
  echo "✗ Source prototype not found at: $SRC" >&2
  exit 1
fi

cp "$SRC" "$DEST"
cd "$REPO_DIR"

if git diff --quiet -- index.html; then
  echo "✓ No changes — index.html already matches the source. Nothing to deploy."
  exit 0
fi

MSG="${1:-Sync prototype from mobile-app ($(date '+%Y-%m-%d %H:%M'))}"
git add index.html
git commit -m "$MSG" >/dev/null
git push

echo "✓ Pushed. GitHub Pages will rebuild in ~1 min:"
echo "  $LIVE_URL"
