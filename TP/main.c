#include "led.h"

void delay(int count)
{
    for (volatile int i = 0; i < count; i++)
    {
        asm volatile("nop");
    }
}

int main(void)
{
    led_init();
    while (1)
    {
        for (int i = 0; i < 10; i++) {  // Réduire le nombre de boucles à 10
            led(LED_GREEN);         // Allumer la LED verte
            delay(100000);          // Augmenter le délai pour un effet de clignotement visible
            led(LED_GREEN_OFF);      // Éteindre la LED verte
            delay(100000);          // Augmenter le délai
        }

        // Clignotement des LED bleue et jaune
        for (int i = 0; i < 10; i++)
        {                  // Réduire le nombre de boucles à 10
            led(LED_BLUE); // Allumer la LED bleue
            delay(100000); // Délai

            led(LED_YELLOW); // Allumer la LED jaune
            delay(100000);   // Délai
        }

        // Clignotement successif des LED verte, bleue et jaune
        for (int i = 0; i < 10; i++)
        {                       // Réduire le nombre de boucles à 10
            led(LED_GREEN);     // Allumer la LED verte
            delay(100000);      // Délai
            led(LED_GREEN_OFF); // Éteindre la LED verte
            delay(100000);      // Délai
            led(LED_BLUE);      // Allumer la LED bleue
            delay(100000);      // Délai
            led(LED_YELLOW);    // Allumer la LED jaune
            delay(100000);      // Délai
        }
        return 0;
    }
}