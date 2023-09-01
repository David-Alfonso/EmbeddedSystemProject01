#!/bin/bash

while true
do
    # The 18 gpio pin is set to HIGH (3.3V)
    echo "1" > /sys/class/gpio/gpio18/value 
    # The 18 gpio pin is set to LOW (0V)
    echo "0" > /sys/class/gpio/gpio18/value 
done