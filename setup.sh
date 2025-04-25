#!/bin/bash
# setup.sh: Setup Git LFS and track media files (macOS/Linux)

set -e

# Install Git LFS if not present
git lfs version >/dev/null 2>&1 || {
  echo "Git LFS not found. Installing..."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install git-lfs
  else
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
    sudo apt-get install git-lfs -y
  fi
}

git lfs install

echo "Tracking media files with Git LFS..."
git lfs track "*.mp4" "*.png"

echo "Adding .gitattributes to git..."
git add .gitattributes

echo "Setup complete. Commit and push your changes if needed."
