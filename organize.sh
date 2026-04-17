#!/bin/bash

echo "--- STARTING FILE ORGANIZATION ---"

mkdir -p Images Documents Videos Others

mv *.jpg *.png *.jpeg *.gif Images/ 2>/dev/null
mv *.pdf *.doc *.docx *.txt Documents/ 2>/dev/null
mv *.mp4 *.mkv *.mov Videos/ 2>/dev/null

echo "Checking for remaining files..."

for file in *; do
    if [ -f "$file" ] && [ "$file" != "organize.sh" ]; then
        mv "$file" Others/
    fi
done

echo "-----------------------------------"
echo "ORGANIZATION COMPLETE!"
