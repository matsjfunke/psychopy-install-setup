#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for Homebrew and install if not found
if ! command_exists brew; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Check for git and install if not found
if ! command_exists git; then
    echo "git not found. Installing git..."
    brew install git
else
    echo "git is already installed."
fi

# Check for Miniconda and install if not found
if ! command_exists conda; then
    echo "Miniconda not found. Installing Miniconda..."
    brew install --cask miniconda

    echo "Initializing Miniconda..."
    conda init "$(basename "${SHELL}")"

    # Activate the changes in the current shell
    source "${HOME}/.zshrc"
else
    echo "Miniconda is already installed."
fi

if [ $? -eq 0 ]; then
    # Exit with success status
    exit 0
else
    exit 1
fi
