#ifndef LED_H
#define LED_H


#include "stm32l475xx.h"
void led_init(void);  // initialiser LED
void led_g_on(void);  // allumer LED2
void led_g_off(void); // éteindre LED2
void led_j_on_b_off(void); // allumer LED3 et éteindre LED4
void led_b_on_j_off(void); // allumer LED4 et éteindre LED3
void led_b_j_off(void); // éteindre LED3 et LED4
void led(int state);

enum state
{
    LED_BLUE_YELLOW_OFF,
    LED_GREEN_OFF,
    LED_YELLOW,
    LED_BLUE,
    LED_GREEN
};

#endif