#!/bin/bash

if [ -d .git ]; then
    if [ "$#" -gt 0 ]; then
        for file in "$@"; do
            git add "$file"
        done
    else
        git add .
    fi

    echo -n "Enter commit message: "
    read commit_message

    # Get the name of the current branch
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    git commit -S -m "$commit_message"

    # Push changes to the current branch
    git push origin $current_branch
else
    echo "Not a git repository"
fi

