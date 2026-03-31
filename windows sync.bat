@echo off

echo Git add...
git add .

echo Git commit...
git diff --cached --quiet && (
  echo No changes to commit
) || (
  git commit -m "Add new resources to README.md"
  echo Git push...
  git push
)

echo Done!
pause