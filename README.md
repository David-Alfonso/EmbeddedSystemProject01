# EmbeddedSystemProject01-
This repository has different codes that are to be used inside a Raspberry Pi 3

SWITCHING A GPIO PIN

The test_c.c file and test_py.py file are ready to be used
The test_c.c file does the switching in the 18 pin of the Raspberry Pi 3
The test_py.py file does the switching in the 5 gpio pin of the WiringPi pinout

For the test_c.c file it is needed to first create the executable
This is compiling the code with gcc and linking the bcm2835 library
Before the creation of the executable the library needs to be installed
The compilation is as the next line

gcc -o executable_file test_c.c -lbcm2835

For the test_py.py file you can compile it as a bash file

. test_py.py

You can also compile it using python instead of the '.'

The test_bash.sh file has the same use as test_c.c and test_py.py
Before using this file, you have to run the setup_bash.sh
The full process should be

. setup_bash.sh
. test_bash.sh

Finally, the one_wire_read.sh file is compiled alone
Before compiling you have to activate the one-wire interface
This is done by adding to the file /boot/config.txt
The line dtoverlay=w1-gpio
This sets the gpio 4 pin as the input for the one-wire
After that, the code is compiled as follows

. one_wire_read.sh
