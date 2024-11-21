#!/bin/zsh

# Push the project to GitHub
REPO_NAME="Fulcrum2"
USERNAME="johnboyce"

# Initialize a new Git repository
git init
git add .
git commit -m "Initial commit"

# Add GitHub remote and push
git remote add origin https://github.com/$USERNAME/$REPO_NAME.git
git branch -M main
git push -u origin main

echo "Repository pushed to https://github.com/$USERNAME/$REPO_NAME"
