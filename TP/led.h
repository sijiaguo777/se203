#ifndef LED_H
#define LED_H

#define RCC_AHB2ENR (*(volatile unsigned int *)0x4002104C) // Registre d'activation de l'horloge pour les ports GPIO
#define RCC_AHB2ENR_GPIOBEN (1 << 1)                       // Activation de l'horloge pour le port GPIOB
#define RCC_AHB2ENR_GPIOCEN (1 << 2)                      // Activation de l'horloge pour le port GPIOC
#define GPIOB_MODER (*(volatile unsigned int *)0x48000400) // Registre de mode pour le port GPIOB
#define GPIOC_MODER (*(volatile unsigned int *)0x48000800) // Registre de mode pour le port GPIOC
#define GPIOB_BSRR (*(volatile unsigned int *)0x48000418) // Registre de réinitialisation et de réglage pour le port GPIOB
#define GPIOC_BSRR (*(volatile unsigned int *)0x48000818) // Registre de réinitialisation et de réglage pour le port GPIOC

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

#endif // LED_H