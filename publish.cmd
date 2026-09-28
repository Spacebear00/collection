@echo off
REM Publish the trade page to https://spacebear00.github.io/collection/
REM
REM  1. In Grimoire: Export -> Several portfolios at once -> "Save a trade page"
REM  2. Save it into this folder, replacing index.html
REM  3. Double-click this file
REM
REM It pushes whatever index.html is here. GitHub takes about a minute to show it.

cd /d "%~dp0"
if not exist index.html (
  echo No index.html here. Save the trade page into this folder first.
  pause
  exit /b 1
)
git add -A
git commit -m "Update the trade page" || echo Nothing changed.
git push
echo.
echo Pushed. It appears at https://spacebear00.github.io/collection/ in a minute or so.
pause
