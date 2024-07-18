#!/bin/zsh
set -e

# Path to your Conda installation
CONDA_PATH="/opt/homebrew/Caskroom/miniconda/base"
echo "Conda path: $CONDA_PATH"

# Ensure the Conda path is added to the PATH environment variable
export PATH="$CONDA_PATH/bin:$PATH"

echo "Creating Conda environment from environment.yml"
conda env create --file environment.yml || { echo "Failed to create Conda environment from environment.yml"; exit 1; }

echo "Initializing Conda for zsh"
conda init zsh || { echo "Failed to initialize Conda for zsh"; exit 1; }

echo "Sourcing the shell configuration"
source ~/.zshrc || { echo "Failed to source ~/.zshrc"; exit 1; }
