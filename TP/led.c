#include "led.h"

void led_init(void)
{

    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN; // Activer l'horloge pour GPIOB
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN; // Activer l'horloge pour GPIOC

    GPIOB->MODER &= ~(GPIO_MODER_MODE14); // effacer les bits 28 et 29
    GPIOB->MODER |= (1 << GPIO_MODER_MODE14_Pos);  // activer la sortie sur le port PB14

    GPIOC->MODER &= ~(GPIO_MODER_MODE9); // effacer les bits 18 et 19
    GPIOC->MODER |= (1 << GPIO_MODER_MODE9_Pos);  // activer la sortie sur le port PC9
}

void led_g_on(void)
{
    // mettre PB14 à 1 (niveau haut) pour allumer la LED
    GPIOB->BSRR = GPIO_BSRR_BS14; // mettre le bit 14 à 1 dans BSRR
}

void led_g_off(void)
{
    // réinitialiser PB14 à 0 pour éteindre la LED
    GPIOB->BSRR = GPIO_BSRR_BR14; // mettre le bit 14 à 1 dans la partie haute du registre BSRR (pour réinitialiser)
}

void led_j_on_b_off(void)
{
    // Quand PC9 est en sortie à l'état haut
    GPIOC->BSRR = GPIO_BSRR_BS9; // mettre le bit 9 à 1 dans BSRR
}

void led_b_on_j_off(void)
{
    // Quand PC9 est en sortie à l'état bas
    GPIOC->BSRR = GPIO_BSRR_BR9; // mettre le bit 9 à 0 dans la partie haute du registre BSRR (pour réinitialiser)
}

void led_b_j_off(void)
{
    // Quand PC9 est en entre, LED3 et LED4 sont eteintes.
    GPIOC->MODER &= ~(GPIO_MODER_MODE9); // activer la mode entree sur le port PC9 (effacer les bits 18 et 19)
}

void led_toggle(void)
{
    GPIOB->ODR ^= GPIO_ODR_OD14;
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
