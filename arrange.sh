#!/bin/bash

for file in files/*.txt; do

    filename=$(basename "$file")

    first_letter=$(echo "$filename" | cut -c1 | tr 'A-Z' 'a-z')
    target_dir="$first_letter"

    if [ -d "$target_dir" ]; then
        mv "$file" "$target_dir/"
    fi
done
