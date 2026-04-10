@echo off

echo [1/3] Git add...
git add .

echo [2/3] Git commit...
git diff --cached --quiet && (
  echo No new changes to commit
) || (
  git commit -m "Add new resources to README.md"
)

echo [3/3] Git push...
:: 独立出来的 push 操作，并加上了简单的失败提示
git push && (
  echo Push successful!
) || (
  echo [ERROR] Push failed! Please check your network connection.
)

echo Done!
pause