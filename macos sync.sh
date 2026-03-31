#!/bin/bash

echo "Git add..."
git add .

echo "Git commit..."
if git diff --cached --quiet; then
  echo "No changes to commit"
else
  git commit -m "Add new resources to README.md"
  echo "Git push..."
  git push
fi

echo "Done!"