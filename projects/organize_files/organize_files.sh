#!/bin/bash

mkdir -p TXT PDF

# move file based on extension
#__Move .txt file
for file in *.txt; do
   [ -f "${file}" ] && mv "${file}" TXT/
done

#__Move .pdf file
for file in *.pdf; do
    [ -f "${file}" ] && mv "${file}" PDF/
done

echo "All file moved successfully"