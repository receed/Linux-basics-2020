#!/bin/bash
size=$RANDOM
echo $size
head -c $size /dev/urandom > rnd.txt
