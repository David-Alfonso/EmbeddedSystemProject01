#!/bin/bash

# It saves the name of the file to be written into
FILE_NAME=$(date +%Y%m%d)_TEMPERATURA.csv

# It tells the user if the file already exists
if [ -e "$FILE_NAME" ]; then
        echo "Archivo ya existe."
else
    # If it doesn't exist, it tells the user that is creating the one
    # It also print the header of the csv file
    echo "Creando Archivo..."
    echo "Fecha,Temperatura" > "$FILE_NAME"
fi


while true
do
    # The first thing is to get what it's within the text file out by the one-wire
    # Then it searches for the "t=" part in the text
    # After that it saves what i's after t= divided by then
    # That saved is the temperature in Celsius degrees
    read_temperature=$(cat /sys/bus/w1/devices/28-3c01d6078b37/w1_slave | grep "t=" | awk -F "t=" '{print $2 / 1000}')
    # It saves the date by year, month, day an space and the hour, minute second
    fecha_dato=$(date +'%Y%m%d %H%M%S')
    # It appends both the date and the date in the file previously created
    echo "$fecha_dato,$read_temperature" >> "$FILE_NAME"
    sleep 10
done