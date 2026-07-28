cd C:\JupyterDemo\Pyspark
git add .
git commit -m "Auto-upload new files at %date% %time%"
git push origin main
git push origin main > C:\JupyterDemo\gitlog.txt 2>&1