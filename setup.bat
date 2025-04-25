@echo off
REM setup.bat: Setup Git LFS and track media files (Windows)

where git-lfs >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Git LFS not found. Installing...
    powershell -Command "winget install --id Git.GitLFS -e --source winget"
)

git lfs install

echo Tracking media files with Git LFS...
git lfs track "*.mp4" "*.png"

echo Adding .gitattributes to git...
git add .gitattributes

echo Setup complete. Commit and push your changes if needed.
