#! /bin/bash
grep -oiE "([^a-zA-Z-]|^)the([^a-zA-Z-]|$)" hamlet.txt | wc -l
# grep -oi "\bthe\b" hamlet.txt | wc -l
