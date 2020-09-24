#! /bin/bash
grep -no "https://[a-zA-Z0-9./]*" urls.txt | sed -E "s/^(.*)$/<<\1>>/"
