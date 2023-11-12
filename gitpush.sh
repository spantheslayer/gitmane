#!/bin/bash

if [ -d .git ]; then
    if [ "$1" ]; then
        git add "$1"
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

