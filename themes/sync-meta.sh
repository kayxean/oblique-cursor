#!/bin/bash

usage() {
    echo "Usage: $0 --input [dir] --output [dir]"
    exit 1
}

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -i|--input) SOURCE_DIR="$2"; shift ;;
        -o|--output) TARGET_DIR="$2"; shift ;;
        -h|--help) usage ;;
        *) echo "Unknown parameter: $1"; usage ;;
    esac
    shift
done

if [[ -z "$SOURCE_DIR" || -z "$TARGET_DIR" ]]; then usage; fi

SOURCE_DIR="${SOURCE_DIR%/}"
TARGET_DIR="${TARGET_DIR%/}"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' not found."
    exit 1
fi

count=0

while read -r src_file; do
    target_file="${src_file/$SOURCE_DIR/$TARGET_DIR}"
    mkdir -p "$(dirname "$target_file")"

    if cp "$src_file" "$target_file"; then
        ((count++))
        echo "Copied: $src_file -> $target_file"
    fi
done < <(find "$SOURCE_DIR" -name "meta.hl")

echo "Done, copying $count shapes metadata."
