#!/bin/bash
for file in $( find -name "*.cpp"); do
    g++ $file -o a
    ./a
done
