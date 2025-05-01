#!/bin/bash

# Directory containing the Jekyll posts
POST_DIR="${1:-_posts}"

# Updated expression to find and replace
OLD_EXPRESSION='{% include raindrop-2c-pix.html %}'
NEW_EXPRESSION='{%- include render.html -%}'

# Loop through all Markdown and HTML files in the directory
find "$POST_DIR" -type f \( -name "*.md" -o -name "*.html" \) | while read -r file; do
  if grep -Fq "$OLD_EXPRESSION" "$file"; then
    # Replace the old expression with the new one in-place
    sed -i "s|$OLD_EXPRESSION|$NEW_EXPRESSION|g" "$file"
    # Echo the filename
    echo "$file"
  fi
done
