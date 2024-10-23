# ifndef LED_H
# define LED_H

# define GPIOB_MODER (*(volatile unsigned int *)0x48000400)
# define GPIOB_BSRR  (*(volatile unsigned int *)0x48000418)

void led_init(void);   // initialiser LED
void led_g_on(void);   // allumer LED2
void led_g_off(void);  // éteindre LED2

# endif // LED_H

void led_init(void){
    // Activer l'horloge pour GPIOB
    GPIOB_MODER |= (1 << 1);
    GPIOB_MODER &= ~(3 << 28);  // effacer les bits 28 et 29
    GPIOB_MODER |= (1 << 28);   // activer la sortie sur le port PB14

}

void led_g_on(void) {
    // mettre PB14 à 1 (niveau haut) pour allumer la LED
    GPIOB_BSRR = (1 << 14);  // mettre le bit 14 à 1 dans BSRR
}


void led_g_off(void) {
    // réinitialiser PB14 à 0 pour éteindre la LED
    GPIOB_BSRR = (1 << (14 + 16));  // mettre le bit 14 à 1 dans la partie haute du registre BSRR (pour réinitialiser)
}
