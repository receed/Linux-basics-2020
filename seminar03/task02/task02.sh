#! /bin/bash
n=$((($RANDOM<<5)^$RANDOM))
if (( $( factor $n | wc -w) == 2 )); then
    echo "$n true"
else
    echo "$n false"
fi

