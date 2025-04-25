# media_repo
media for different projects

## Git LFS Setup

This repository uses [Git Large File Storage (LFS)](https://git-lfs.com/) to manage large media files.

### Quick Setup

#### macOS / Linux
```sh
bash setup.sh
```

#### Windows
```bat
setup.bat
```

This will install Git LFS (if needed), initialize it, and track common media file types (e.g., .mp4, .png).

## Adding and Pushing Media Files
1. Add your media files to the appropriate folder.
2. Commit and push as usual:
   ```sh
   git add .
   git commit -m "Add media files"
   git push
   ```

## Accessing Raw Media Links
After pushing, you can get the raw link for any file by navigating to it on GitHub, clicking the file, and then clicking "Download" or "View Raw". The raw link format is:

```
https://github.com/USERNAME/media_repo/raw/main/PATH/TO/FILE
```

### Example Raw Links
- data-flow-generator/data-flow-generator-demo-thumbnail.png  
  https://github.com/USERNAME/media_repo/raw/main/data-flow-generator/data-flow-generator-demo-thumbnail.png
- data-flow-generator/data-flow-generator-demo.mp4  
  https://github.com/USERNAME/media_repo/raw/main/data-flow-generator/data-flow-generator-demo.mp4

Replace `USERNAME` with your GitHub username if you fork or clone this repo.
