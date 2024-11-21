#!/bin/zsh

# Variables
REPO_NAME="Fulcrum2"
GITHUB_USERNAME="johnboyce"
DESCRIPTION="AWS infrastructure project using Terraform, Lambda, and GitHub Actions."
VISIBILITY="public"  # Options: public, private

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
  echo "GitHub CLI (gh) is not installed. Please install it and try again."
  exit 1
fi

# Check if Git is initialized
if [ ! -d .git ]; then
  echo "Git is not initialized in this directory. Initializing now..."
  git init
fi

# Stage all files and commit
echo "Staging files and creating the initial commit..."
git add .
git commit -m "Initial commit"

# Create a new GitHub repository
echo "Creating a new GitHub repository: ${REPO_NAME}..."
gh repo create "${GITHUB_USERNAME}/${REPO_NAME}" --description "${DESCRIPTION}" --${VISIBILITY} --confirm

# Add remote and push code
echo "Adding remote origin and pushing code to GitHub..."
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"
git branch -M main
git push -u origin main

# Confirmation
echo "Repository created and code pushed successfully!"
echo "Repository URL: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"

