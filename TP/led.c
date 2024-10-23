#include "stm32l4xx.h"  // 适用于 STM32L4 系列的头文件
#include "led.h"

void led_init(void){

    GPIOB->MODER |= GPIO_MODER_MODER0_0;
    GPIOB->OTYPER &= ~GPIO_OTYPER_OT_0;
    GPIOB->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR0;
    GPIOB->PUPDR &= ~GPIO_PUPDR_PUPDR0;
}