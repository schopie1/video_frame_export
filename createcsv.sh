#!/bin/bash
echo > output.csv
count=1
YSCALE=50
find * -maxdepth 0 -name "*.jpg" -print0 | \
    (while read -d $'\0' i; do echo \"$i\", $(echo $i | sed -e s/[^0-9]//g), $(($RANDOM%$YSCALE)) >> output.csv; count=$((count+1));  done)
