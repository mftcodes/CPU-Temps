#!/bin/bash

echo Displays CPU temp, updated every second
echo Press Q to exit.

while true; do
    # Get temp and then print
    temp=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
    printf "\r $temp\u00b0 C "

    # read input, -t timeout for n second, -N reads single char, exit on q or Q input
    read -t 1 -N 1 input
    if [[ $input = "q" ]] || [[ $input = "Q" ]]; then
    # prompt to new line on quit
        echo
        break
    fi
done
