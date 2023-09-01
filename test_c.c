#include <bcm2835.h> // This library is for the use of the pins
#include <stdio.h> // This library is for the printf

#define PIN RPI_GPIO_P1_18 // This is for a generalization for any pin
// In this case it will be used the 18 pin

int main()
{
    if (!bcm2835_init()) { // It initializes the the library
        // It tells the user that the library wasn't initialized
        printf("No funciona la libreria");
        return 1; // Initialization failed, end of the program
    }

    // It the sets the pin yo be an Output
    bcm2835_gpio_fsel(PIN, BCM2835_GPIO_FSEL_OUTP);

    while (1) {
        bcm2835_gpio_write(PIN, HIGH); // Set the pin HIGH (3.3V)
        bcm2835_gpio_write(PIN, LOW);  // Set the pin LOW (0V)
    }

    // It cleans up and releases any resources allocated in the initialization 
    bcm2835_close();
    return 0;
}