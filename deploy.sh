#!/bin/sh

# If a command fails then the deploy stops
#set -e

# Build the project.
# on command prompt run 'npm run build'

git add .
printf "\033[0;32mCommit changes to source...\033[0m\n"

# Commit changes.
msg="rebuilding source $(date)"
if [ -n "$1" ]; then
	msg="$1"
fi
git commit -m "$msg"

git push -u origin main

printf "\033[0;32mDone................\033[0m\n"



