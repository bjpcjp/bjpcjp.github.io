#!/bin/bash

# Change to the root directory of the Jekyll site (adjust as needed)
JEKYLL_ROOT="$(pwd)"
POSTS_DIR="$JEKYLL_ROOT/_posts"

# Exit if the _posts directory does not exist
if [ ! -d "$POSTS_DIR" ]; then
  echo "Error: _posts directory not found at $POSTS_DIR"
  exit 1
fi

echo "Updating layout in markdown files under _posts..."

# Loop over all Markdown files
find "$POSTS_DIR" -type f \( -name "*.md" -o -name "*.html" \) | while read -r file; do
  if grep -q '^layout: default$' "$file"; then
    sed -i.bak 's/^layout: default$/layout: default-foundation-20210515/' "$file"
    echo "Updated: $file"
  fi
done

echo "Done. Backup files with .bak extension were created for safety."
