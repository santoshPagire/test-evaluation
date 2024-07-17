# Task - Shell script

## Task - 1

To create a shell script that categorizes the time of day based on user input (in 24-hour format), you can follow these steps. The script will prompt the user to enter an hour between 00:00 and 23:59, and based on the input, it will categorize the time into `early morning`, `morning`, `afternoon`, or `late night`.

### Contect must in your script

1) **Prompt the user for input:** Ask the user to enter an hour of the day in 24-hour format.

2) **Validate the input:** Ensure that the input is a valid number between start time.

3) **Categorize the time:** Use conditional statements to determine the time of day based on the hour entered.

| Start time | End time | Message |
| :---:   | :---: | :---: |
| 00:01 | 06:00 | Early Morning |
| 06:01 | 12:00 |  Morning      |
| 13:01 | 18:00 | afternoon     |
| 18:01 | 23:59 |  late night   |

4) **Display the result:** Output the corresponding message from given table in step no. 3


## Solution:

1.create script file 

```bash
touch bash.sh
```

2.Add below code in file

```bash

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

```
3.Give permission to make file executable

```bash
chmod 0755 script.sh
```
4.Run code

```bash
./script.sh
```
### Output

![alt text](<Screenshot from 2024-07-17 08-16-30.png>)
