# define GPIOB_MODER (*(volatile unsigned int *)0x48000400)
# define GPIOB_BSRR  (*(volatile unsigned int *)0x48000418)
#include "led.h"

void led_init(void){
    // Activer l'horloge pour GPIOB
    GPIOB_MODER |= (1 << 1);
    GPIOB_MODER &= ~(3 << 28);  // effacer les bits 28 et 29
    GPIOB_MODER |= (1 << 28);   // activer la sortie sur le port PB14

}

// Fonction pour allumer la LED2 (connectée à PB14)
void led_g_on(void) {
    // Régler PB14 à 1 (niveau haut) pour allumer la LED
    GPIOB_BSRR = (1 << 14);  // Mettre le bit 14 à 1 dans le registre BSRR
}

// Fonction pour éteindre la LED2 (connectée à PB14)
void led_g_off(void) {
    // Réinitialiser PB14 à 0 (niveau bas) pour éteindre la LED
    GPIOB_BSRR = (1 << (14 + 16));  // Mettre le bit 14 à 1 dans la partie haute du registre BSRR pour réinitialiser
}