#! /bin/bash
sed -E "s/(.) (.)/\2 \1/" digits.txt
