#!/bin/bash

# Year in the form of YYYY
year=$1

# Month from "01" - "12"
month=$2

isLeapYear()
{
     if ((year % 4 == 0)) && ((year % 400 == 0 || year % 100 != 0)); then
         echo true
     else
         echo false
     fi
}

daysInMonth()
{
    local isLeapYear="$1"
    if [[ $month == 02 ]]; then
      $(isLeapYear) && echo 29 || echo 28
    elif ((month % 2 == 0)); then
        echo 30
    else
        echo 31
    fi
}

echo "There are $(daysInMonth $(isLeapYear)) days in the supplied month."

