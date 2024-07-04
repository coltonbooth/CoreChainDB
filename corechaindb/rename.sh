#!/bin/zsh

# Replace 'bigchaindb' with 'corechaindb' in file contents
find . -type f ! -path './.git/*' -exec perl -i -pe 's/bigchaindb/corechaindb/gi' {} +

# Replace 'BigchainDB' with 'CoreChainDB' in file contents
find . -type f ! -path './.git/*' -exec perl -i -pe 's/BigchainDB/CoreChainDB/g' {} +

# Rename directories
find . -depth -type d -name '*bigchaindb*' ! -path './.git/*' | while IFS= read -r dir; do
    mv "$dir" "$(dirname "$dir")/$(basename "$dir" | sed 's/bigchaindb/corechaindb/')"
done

find . -depth -type d -name '*BigchainDB*' ! -path './.git/*' | while IFS= read -r dir; do
    mv "$dir" "$(dirname "$dir")/$(basename "$dir" | sed 's/BigchainDB/CoreChainDB/')"
done

# Rename files
find . -depth -type f -name '*bigchaindb*' ! -path './.git/*' | while IFS= read -r file; do
    mv "$file" "$(dirname "$file")/$(basename "$file" | sed 's/bigchaindb/corechaindb/')"
done

find . -depth -type f -name '*BigchainDB*' ! -path './.git/*' | while IFS= read -r file; do
    mv "$file" "$(dirname "$file")/$(basename "$file" | sed 's/BigchainDB/CoreChainDB/')"
done