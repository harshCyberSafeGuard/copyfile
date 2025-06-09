#!/bin/bash

# Check if file exists
if [ -z "$1" ] || [ ! -f "$1" ]; then
    echo "Usage: copyclip <filename>"
    exit 1
fi

file="$1"

echo "Choose copy option:"
echo "A: Copy whole file"
echo "B: Copy last N bytes"
echo "C: Copy last N lines"
read -p "Enter choice (A/B/C): " choice

case "$choice" in
    A|a)
        cat "$file" | xclip -selection clipboard
        echo "✅ Whole file copied to clipboard."
        ;;
    B|b)
        read -p "Enter number of bytes: " bytes
        tail -c "$bytes" "$file" | xclip -selection clipboard
        echo "✅ Last $bytes bytes copied to clipboard."
        ;;
    C|c)
        read -p "Enter number of lines: " lines
        tail -n "$lines" "$file" | xclip -selection clipboard
        echo "✅ Last $lines lines copied to clipboard."
        ;;
    *)
        echo "❌ Invalid choice."
        exit 1
        ;;
esac
