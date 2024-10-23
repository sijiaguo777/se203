# define GPIOB_MODER (*(volatile unsigned int *)0x48000400)

#include "led.h"

void led_init(void){

    GPIOB_MODER |= (1 << 1);
    GPIOB_MODER &= ~(3 << 28);  // effacer les bits 28 et 29
    GPIOB_MODER |= (1 << 28);   // activer la sortie sur le port PB14

}
