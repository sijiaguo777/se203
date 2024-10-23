#include "led.h"

int main(void) {
    // Initialiser la LED (configurer PB14 en sortie)
    led_init();

    // Boucle infinie pour faire clignoter la LED2
    while (1) {
        // Allumer la LED
        led_g_on();

        // Attente active avec une boucle de retard
        for (int i = 0; i < 1000000; i++) {
            asm volatile ("nop");  // instruction 'nop' pour ne rien faire (attente)
        }

        // Éteindre la LED
        led_g_off();

        // Attente active avec une boucle de retard
        for (int i = 0; i < 1000000; i++) {
            asm volatile ("nop");  // instruction 'nop' pour ne rien faire (attente)
        }
    }

    return 0;  // Le programme ne devrait jamais atteindre cette ligne
}