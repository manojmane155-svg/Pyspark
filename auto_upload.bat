@echo off
cd C:\JupyterDemo\Pyspark

:: Step 1 - Remove stale lock if it exists
if exist .git\index.lock del .git\index.lock

:: Step 2 - Stage all changes (new, modified, deleted)
git add -A

:: Step 3 - Commit with timestamp
git commit -m "Auto-upload at %date% %time%"

:: Step 4 - Sync with remote before pushing
git pull origin main --rebase

:: Step 5 - Push changes and log output
git push origin main > C:\JupyterDemo\gitlog.txt 2>&1

:: Keep window open to show errors
pause