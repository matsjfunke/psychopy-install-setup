#!/bin/zsh
set -e  # Exit immediately if any command fails

# Directory where this parent script is located
PARENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Ensure scripts are executable
chmod 755 "${PARENT_DIR}/install_dependencies.zsh"
chmod 755 "${PARENT_DIR}/activate_env.zsh"

# Call the setup script
"${PARENT_DIR}/install_dependencies.zsh"

# Check exit status of the install_dependencies.sh script
if [ $? -eq 0 ]; then
    echo "Dependencies installation complete."
else
    echo "Dependencies installation failed."
    exit 1
fi

# Call the activate_env.sh script
"${PARENT_DIR}/activate_env.zsh"

# Check exit status of the activate_env.sh script
if [ $? -eq 0 ]; then
    echo "Created Conda environment 'psychopy-env', activate it using 'conda activate psychopy-env'"
else
    echo "Failed to create Conda environment."
    exit 1
fi
