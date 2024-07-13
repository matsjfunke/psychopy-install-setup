#!/bin/bash

# Directory where the download script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Clone the Git repository
git clone https://github.com/matsjfunke/automatic-psychopy-install.git

# Check if cloning was successful
if [ $? -ne 0 ]; then
    echo "Clone failed"
    exit 1
fi

# Move into the cloned directory
cd "${SCRIPT_DIR}/automatic-psychopy-install"

# Ensure downloads directory exists in the parent script's directory
mkdir -p "${SCRIPT_DIR}/downloads/"

# Move the specific file to the parent script's directory
mv environment.yml "${SCRIPT_DIR}/downloads/"

# Check if the move was successful
if [ $? -ne 0 ]; then
    echo "Move failed"
    exit 1
fi

# Navigate back to the script's directory
cd "$SCRIPT_DIR"

# Delete the cloned repository
rm -rf "${SCRIPT_DIR}/automatic-psychopy-install"

# Check if the delete was successful
if [ $? -eq 0 ]; then
    # Exit with success status
    exit 0
else
    echo "Download failed"
    exit 1
fi
