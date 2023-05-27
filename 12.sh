#!/bin/bash

declare -A file_map

for file in *_haddock_310K_*_*.pdb; do
    number="${file#*_haddock_310K_}"
    number="${number%%_*}"
    if [[ -z "${file_map[$number]}" ]]; then
        file_map[$number]="rf_$number.pdb"
    fi
    cat "$file" >> "${file_map[$number]}"
done