#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$status" = "Charging" ]; then
    if [ "$capacity" -le 5 ]; then
        icon="\U000f089f"
    elif [ "$capacity" -le 15 ]; then
        icon="\U000f089c"
    elif [ "$capacity" -le 25 ]; then
        icon="\U000f0086"
    elif [ "$capacity" -le 35 ]; then
        icon="\U000f0087"
    elif [ "$capacity" -le 45 ]; then
        icon="\U000f0088"
    elif [ "$capacity" -le 55 ]; then
        icon="\U000f089d"
    elif [ "$capacity" -le 65 ]; then
        icon="\U000f0089"
    elif [ "$capacity" -le 75 ]; then
        icon="\U000f089e"
    elif [ "$capacity" -le 85 ]; then
        icon="\U000f008a"
    elif [ "$capacity" -le 95 ]; then
        icon="\U000f008b"
    else
        icon="\U00f0085"  # Иконка полной зарядки
    fi
else
    if [ "$capacity" -le 5 ]; then
        icon="\U000f008e"
    elif [ "$capacity" -le 15 ]; then
       icon="\U000f007a"
    elif [ "$capacity" -le 25 ]; then
        icon="\U000f007b"
    elif [ "$capacity" -le 35 ]; then
        icon="\U000f007c"
    elif [ "$capacity" -le 45 ]; then
        icon="\U000f007d"
    elif [ "$capacity" -le 55 ]; then
        icon="\U000f007e"
    elif [ "$capacity" -le 65 ]; then
        icon="\U000f007f"
    elif [ "$capacity" -le 75 ]; then
        icon="\U000f0080"
    elif [ "$capacity" -le 85 ]; then
        icon="\U000f0081"
    elif [ "$capacity" -le 95 ]; then
        icon="\U000f0082"
    else
        icon="\U00f0079"  # Иконка полной зарядки
    fi
fi
# Выводим иконку и уровень заряда
echo -e "$icon $capacity%"

