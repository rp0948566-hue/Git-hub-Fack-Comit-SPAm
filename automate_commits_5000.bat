@echo off
setlocal enabledelayedexpansion

for /l %%i in (1,1,3000) do (
    echo Manual update %%i >> activity-log.txt
    git add .
    git commit -m "Manual update %%i"
    git push
    timeout /t 1 /nobreak > nul
)

echo Done.
