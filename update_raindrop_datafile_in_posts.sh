#!/bin/bash

# Directory containing the Jekyll posts
POST_DIR="${1:-_posts}"

# Updated expression to find and replace
OLD_EXPRESSION='{%- assign raindrop = site.data.raindrop.v20250419.rain20250419 %}'
NEW_EXPRESSION='{%- assign raindrop = site.data.raindrop.v20250422.export %}'

# Loop through all files in the directory
find "$POST_DIR" -type f \( -name "*.md" -o -name "*.html" \) | while read -r file; do
  if grep -Fq "$OLD_EXPRESSION" "$file"; then
    # Replace the old expression with the new one in-place
    sed -i "s|$OLD_EXPRESSION|$NEW_EXPRESSION|g" "$file"
    # Echo the filename
    echo "$file"
  fi
done
