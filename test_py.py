#!/bin/python
# First the library needed for accessing the pins is imported
import wiringpi as gpio

# The value of the constant for using a pin as an Output
# This is needed for the setup of the pin
OUTPUT = 1
# The pin to be used is the pin 5 in the wiringpi conecctions
PIN = 5

# Initialize the wiringPi library
gpio.wiringPiSetup()
# The pin to be used is setup to Output mode
gpio.pinMode(PIN,OUTPUT)

while True:
    gpio.digitalWrite(PIN,1) # The pin is set to HIGH (3.3V)
    gpio.digitalWrite(PIN,0) # The pin is set to LOW (0V)