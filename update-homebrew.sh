#!/bin/bash

pushd .
cd "$(dirname "$0")"

# Script to update Homebrew

echo "Starting homebrew install process..."
ansible-playbook main.yml --tags "mas,homebrew,dock"

popd

echo "homebrew install / update complete..."
