#! /bin/bash
read n m
fn=$n
fm=$m
while (( m != 0 )); do
    let d=$n%$m
    n=$m
    m=$d
done
echo "$fn $fm $n"
