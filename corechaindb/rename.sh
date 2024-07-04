#!/bin/zsh

# Replace 'corechaindb' with 'corechaindb' in file contents, excluding .git directory
find . -type f ! -path "./.git/*" -exec perl -i -pe 's/corechaindb/corechaindb/g' {} +

# Rename directories, excluding .git directory
find . -depth -type d ! -path "./.git/*" -name '*corechaindb*' | while IFS= read -r dir; do
    mv "$dir" "$(dirname "$dir")/$(basename "$dir" | sed 's/corechaindb/corechaindb/')"
done

# Rename files, excluding .git directory
find . -depth -type f ! -path "./.git/*" -name '*corechaindb*' | while IFS= read -r file; do
    mv "$file" "$(dirname "$file")/$(basename "$file" | sed 's/corechaindb/corechaindb/')"
done
