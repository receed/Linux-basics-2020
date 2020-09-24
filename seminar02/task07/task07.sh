#! /bin/bash
sed -E "s/(.) (.)/\2 \1/; s/ //g" digits.txt
