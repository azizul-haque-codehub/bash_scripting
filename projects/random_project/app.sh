#!/bin/bash
[ -f "test.txt" ] || touch test.txt

for item in $(seq 0 1000); do
    echo "serial: $item" >> test.txt
done