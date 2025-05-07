#!/bin/bash

# Directory containing the Jekyll posts
POST_DIR="${1:-_posts}"

# Updated expression to find and replace
# latest: /home/bjpcjp/projects/code/datasets/raindrop/v20250506/fa130d60-7ef1-4ab2-9f19-28ffe76edb37.csv

#OLD_EXPRESSION='{%- assign raindrop = site.data.raindrop.v20250422.export %}'
OLD_EXPRESSION='{%- assign raindrop = site.data.raindrop.v20250501.export %}'
NEW_EXPRESSION='{%- assign raindrop = site.data.raindrop.v20250506.v20250506 %}'

# Loop through all files in the directory
find "$POST_DIR" -type f \( -name "*.md" -o -name "*.html" \) | while read -r file; do
  if grep -Fq "$OLD_EXPRESSION" "$file"; then
    # Replace the old expression with the new one in-place
    sed -i "s|$OLD_EXPRESSION|$NEW_EXPRESSION|g" "$file"
    # Echo the filename
    echo "$file"
  fi
done
