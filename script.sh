#!/bin/bash

read -p "Enter the Time (in 24-hour format HH:MM) : " TIME 

if ! [[ $TIME =~ ^([01][0-9]|2[0-3]):[0-5][0-9]$ ]]
then
    echo "Invalid Time. Enter valid time in 24-hour format (e.g. 22:05)"
    exit 1
fi

HOUR=$(echo "$TIME" | tr -d :)

if [ $HOUR -ge 0000 ] && [ $HOUR -le 0600 ]; then 
    echo "Early Morning"

elif [ $HOUR -ge 0601 ] && [ $HOUR -le 1300 ]; then
    echo "Morning"

elif [ $HOUR -ge 1301 ] && [ $HOUR -le 1800 ]; then
    echo "Afternoon"

elif [ $HOUR -ge 1801 ] && [ $HOUR -le 2359 ]; then
    echo "Late Night"

else
    echo "Invalid Time. Enter valid time in 24-hour format (e.g. 22:05)"
    exit 1
fi