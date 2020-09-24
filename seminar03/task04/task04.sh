#! /bin/bash
{
    read line
    for i in $line; do
        res=1
        for (( j=1; j<=i; j++)); do
            let res=res*j
        done
        echo -n "$res "
    done
} < numbers.txt
