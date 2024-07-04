#!/bin/zsh

# Replace 'corechaindb' with 'corechaindb' in file contents
find . -type f ! -path './.git/*' -exec perl -i -pe 's/corechaindb/corechaindb/g' {} +

# Rename directories
find . -depth -type d -name '*corechaindb*' ! -path './.git/*' | while IFS= read -r dir; do
    mv "$dir" "$(dirname "$dir")/$(basename "$dir" | sed 's/corechaindb/corechaindb/')"
done

# Rename files
find . -depth -type f -name '*corechaindb*' ! -path './.git/*' | while IFS= read -r file; do
    mv "$file" "$(dirname "$file")/$(basename "$file" | sed 's/corechaindb/corechaindb/')"
done
