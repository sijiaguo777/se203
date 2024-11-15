#include "timer.h"
#include "uart.h"
#include "led.h"

void timer_init(int time){
    RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN_Msk; 
    TIM2->SR = 0; //éffacer les flags
    TIM2->CNT = 0; // reset counter
    TIM2->CR1 = (TIM2->CR1 & ~TIM_CR1_CMS) | (0b00 << TIM_CR1_CMS_Pos);
    TIM2->CR1 = (TIM2->CR1 & ~TIM_CR1_DIR_Msk) | (0 << TIM_CR1_DIR_Pos); 

    TIM2->PSC = 79;  // 80-1
    TIM2->ARR = time - 1;

    TIM2->DIER |= TIM_DIER_UIE; 
    TIM2->CR1 |= TIM_CR1_CEN; 

    NVIC_SetPriority(TIM2_IRQn, 5);
    NVIC_EnableIRQ(TIM2_IRQn);
}

void TIM2_IRQHandler(){
    if (TIM2->SR & TIM_SR_UIF)
    {
        TIM2->SR &= ~TIM_SR_UIF;
        led_toggle();
        // print_frame();
    }
}