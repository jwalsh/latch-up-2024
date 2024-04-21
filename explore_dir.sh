#!/usr/bin/env bash
# This script is used to explore the contents of a directory and display the contents of text files

# Author: Jason Walsh <j@wal.sh>

usage() {
  echo "Usage: $0"
  echo "This script is used to explore the contents of a directory and display the contents of text files"
  echo ""
  echo "Options:"
  echo "  -h, --help    Display this help and exit"
}

explore_dir() {
  local temp_dir="$(pwd)"
  local max_file_size=1048576  # 1 MB
  local max_total_size=10485760  # 10 MB
  local total_size=0

  echo "Exploration prompt for LLM:"
  echo ""
  echo "The following content represents the structure and contents of the '$temp_dir' directory:"
  echo ""

  find "$temp_dir" -type f -print0 | while IFS= read -r -d '' file; do
    local file_size=$(wc -c < "$file")
    if ((file_size > max_file_size)); then
      echo "--- File: $file ($(file --brief --mime-type "$file")) - Skipped (File size exceeds $max_file_size bytes) ---"
      continue
    fi

    if ((total_size + file_size > max_total_size)); then
      echo "--- Skipping remaining files (Total size limit of $max_total_size bytes reached) ---"
      break
    fi

    if file --mime-type "$file" | grep -q 'text/'; then
      echo "--- File: $file ---"
      echo ""
      cat "$file"
      echo ""
    else
      echo "--- File: $file ($(file --brief --mime-type "$file")) ---"
    fi

    ((total_size += file_size))
  done

  echo "End of exploration prompt."
}

# Function to explore the contents of a directory
explore_dir
