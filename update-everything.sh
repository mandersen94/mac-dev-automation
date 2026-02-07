#!/bin/bash

pushd .
cd "$(dirname "$0")"

# Script to update macOS, Homebrew, and installed packages

echo "Starting system update process..."

# Update macOS software
echo "Checking for macOS updates..."
softwareupdate -l
softwareupdate -i -a

# Update Homebrew and installed packages
echo "Updating Homebrew..."
brew update
brew upgrade
brew cleanup

# Update npm global packages
if command -v npm &> /dev/null; then
    echo "Updating npm global packages..."
    npm install -g npm
    npm update -g
else
    echo "npm is not installed. Skipping npm updates."
fi

# Update Python packages
if command -v pip3 &> /dev/null; then
    echo "Updating Python packages..."
    pip3 install --upgrade pip
    pip3 list --outdated --format=freeze | cut -d '=' -f 1 | xargs -n1 pip3 install --upgrade
else
    echo "pip3 is not installed. Skipping Python package updates."
fi

# Update Ruby gems
# if command -v gem &> /dev/null; then
#     echo "Updating Ruby gems..."
#     gem update --system
#     gem update
# else
#     echo "Ruby gem is not installed. Skipping gem updates."
# fi

ansible-playbook main.yml --tags "mas,homebrew,dock" 

./mac-configure.sh

popd
echo "System update process completed!"