#!/bin/bash

cd tmp/

# date +%Y-%m-%d
output=../hurd_bootstrap_$(date +%Y-%m-%d).tar.xz

if [ -f "$output" ]; then
    echo "ERROR: $output already exists."
    exit 1
fi

tar cvf - tools/ | xz -c > $output
