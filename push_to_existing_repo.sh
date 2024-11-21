#!/bin/zsh

# Variables
REPO_NAME="Fulcrum2"
GITHUB_USERNAME="johnboyce"
REMOTE_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

# Check if Git is initialized
if [ ! -d .git ]; then
  echo "Git is not initialized in this directory. Initializing now..."
  git init
fi

# Check if a remote already exists
if git remote | grep -q "origin"; then
  echo "A remote named 'origin' already exists. Skipping remote addition."
else
  echo "Adding remote repository..."
  git remote add origin "${REMOTE_URL}"
fi

# Stage all files
echo "Staging files..."
git add .

# Create an initial commit
echo "Creating an initial commit..."
git commit -m "Initial commit"

# Push code to the GitHub repository
echo "Pushing code to GitHub..."
git branch -M main
git push -u origin main

# Confirmation
echo "Code successfully pushed to the repository!"
echo "Repository URL: ${REMOTE_URL}"

