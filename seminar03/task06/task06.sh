#! /bin/bash

while read line; do
    echo "$line $(echo $line | wc -w)"
done < $1
echo "$line $(echo $line | wc -w)"
