#!/bin/bash

# The 18 gpio pin is set to be used
echo "18" > /sys/class/gpio/export

# The 18 gpio pin is setup as an out pin
echo "out" > /sys/class/gpio/gpio18/direction