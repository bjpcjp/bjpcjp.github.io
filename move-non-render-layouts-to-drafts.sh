#!/bin/bash

# Target string to search for (can be passed as an argument)
SEARCH_STRING="${1:-{% include render.html %}}"

# Directories
POST_DIR="_posts"
DRAFT_DIR="_drafts"

# Ensure target directory exists
mkdir -p "$DRAFT_DIR"

# Process files in _posts
find "$POST_DIR" -type f \( -name "*.md" -o -name "*.html" \) | while read -r file; do
  if ! grep -Fq "$SEARCH_STRING" "$file"; then
    mv "$file" "$DRAFT_DIR/"
    echo "Moved: $file"
  fi
done
