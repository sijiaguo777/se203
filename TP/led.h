#ifndef LED_H
#define LED_H

#define RCC_AHB2ENR (*(volatile unsigned int *)0x4002104C) // Registre d'activation de l'horloge pour les ports GPIO
#define RCC_AHB2ENR_GPIOBEN (1 << 1)                       // Activation de l'horloge pour le port GPIOB
#define RCC_AHB2ENR_GPIOCEN (1 << 2)                      // Activation de l'horloge pour le port GPIOC
#define GPIOB_MODER (*(volatile unsigned int *)0x48000400) // Registre de mode pour le port GPIOB
#define GPIOC_MODER (*(volatile unsigned int *)0x48000800) // Registre de mode pour le port GPIOC
#define GPIOB_BSRR (*(volatile unsigned int *)0x48000418) // Registre de réinitialisation et de réglage pour le port GPIOB
#define GPIOC_BSRR (*(volatile unsigned int *)0x48000818) // Registre de réinitialisation et de réglage pour le port GPIOC
#endif // LED_H

void led_init(void);  // initialiser LED
void led_g_on(void);  // allumer LED2
void led_g_off(void); // éteindre LED2
void led(int state);

enum state
{
    LED_BLUE_YELLOW_OFF,
    LED_GREEN_OFF,
    LED_YELLOW,
    LED_BLUE,
    LED_GREEN
};



void led_init(void)
{

    RCC_AHB2ENR |= RCC_AHB2ENR_GPIOBEN; // Activer l'horloge pour GPIOB
    RCC_AHB2ENR |= RCC_AHB2ENR_GPIOCEN; // Activer l'horloge pour GPIOC

    GPIOB_MODER &= ~(3 << 28); // effacer les bits 28 et 29
    GPIOB_MODER |= (1 << 28);  // activer la sortie sur le port PB14

    GPIOC_MODER &= ~(3 << 18); // effacer les bits 18 et 19
    // GPIOC_MODER |= (1 << 18);  // activer la sortie sur le port PC9
}

void led_g_on(void)
{
    // mettre PB14 à 1 (niveau haut) pour allumer la LED
    GPIOB_BSRR = (1 << 14); // mettre le bit 14 à 1 dans BSRR
}

void led_g_off(void)
{
    // réinitialiser PB14 à 0 pour éteindre la LED
    GPIOB_BSRR = (1 << (14 + 16)); // mettre le bit 14 à 1 dans la partie haute du registre BSRR (pour réinitialiser)
}

void led_j_on_b_off(void)
{
    // Quand PC9 est en sortie à l'état haut
    GPIOC_BSRR = (1 << 9); // mettre le bit 9 à 1 dans BSRR
}

void led_b_on_j_off(void)
{
    // Quand PC9 est en sortie à l'état bas
    GPIOC_BSRR = (1 << (9 + 16)); // mettre le bit 9 à 0 dans la partie haute du registre BSRR (pour réinitialiser)
}

void led_b_j_off(void)
{
    // Quand PC9 est en entre, LED3 et LED4 sont eteintes.
    GPIOC_MODER &= ~(3 << 18); // activer la mode entree sur le port PC9 (effacer les bits 18 et 19)
}

void led(int state)
{
    switch (state)
    {
    case LED_BLUE_YELLOW_OFF:
        led_b_j_off();
        break;
    case LED_GREEN_OFF:
        led_g_off();
        break;
    case LED_YELLOW:
        led_j_on_b_off();
        break;
    case LED_BLUE:
        led_b_on_j_off();
        break;
    case LED_GREEN:
        led_g_on();
        break;
    }
}
