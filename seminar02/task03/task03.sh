#!/bin/bash
kill $( ps -aux | grep "tail -f /dev/null" | head -n1 | tr -s ' ' | cut -f2 -d " ") 
