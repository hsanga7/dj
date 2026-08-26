#!/bin/bash
# Double-click this file to save and push all changes in this folder to GitHub.
# Works no matter where this folder lives on your Mac — it finds itself automatically.

cd "$(dirname "$0")"

echo "Checking for changes in: $(pwd)"
echo ""

git add -A

if git diff --cached --quiet; then
  echo "No changes to sync — everything's already up to date."
else
  git commit -m "update $(date '+%Y-%m-%d %H:%M')"
  echo ""
  echo "Pushing to GitHub..."
  git push
  echo ""
  echo "Done! Your site will redeploy on Vercel within about 30 seconds."
fi

echo ""
read -p "Press Enter to close this window..."
