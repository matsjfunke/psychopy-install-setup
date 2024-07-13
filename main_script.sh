#!/bin/bash

# Directory where this parent script is located
PARENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Call the download script
"${PARENT_DIR}/download_env.sh"

# Check if the download_script was successful
if [ $? -eq 0 ]; then
    echo "Downloaded envionment.yml successfully"
else
    echo "Download envionment.yml process failed"
fi

# Call the setup script
"${PARENT_DIR}/setup.sh"

if [ $? -eq 0 ]; then
    # Exit with success status
    echo "Setup complete. Congratulations! Everything is ready to go."
else
    echo "Setup failed"
fi
