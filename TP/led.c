#include "led.h"

int main(void)
{
    led_init();
    while (1)
    {
        // allumer la LED
        led_g_on();

        // attente active avec une boucle de retard
        for (int i = 0; i < 1000000; i++)
        {
            asm volatile("nop"); // instruction 'nop' pour implémenter des délais)
        }

        // éteindre la LED
        led_g_off();

        // attente active avec une boucle de retard
        for (int i = 0; i < 1000000; i++)
        {
            asm volatile("nop");
        }
    }

    return 0;
}