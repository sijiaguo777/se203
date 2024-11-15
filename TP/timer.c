#include "timer.h"
#include "uart.h"


void timer_init(int max_us){
    RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN_Msk; // TIM2 clock enable
    TIM2->CR1 = (TIM2->CR1 & ~TIM_CR1_CMS) | (0b00 << TIM_CR1_CMS_Pos);  // 设置 TIM2 为边沿对齐模式
    TIM2->CR1 = (TIM2->CR1 & ~TIM_CR1_DIR_Msk) | (0 << TIM_CR1_DIR_Pos); // 设置 TIM2 为向上计数器
    TIM2->PSC = 79;  // 预分频器值，时钟频率为 80 MHz / (PSC + 1) = 1 MHz
    TIM2->ARR = max_us - 1; // 设置自动重装载值
    TIM2->DIER |= TIM_DIER_UIE; // 启用更新中断
    TIM2->CR1 |= TIM_CR1_CEN; // 启动计数器
    NVIC_SetPriority(TIM2_IRQn, 5);
    NVIC_EnableIRQ(TIM2_IRQn); // enable TIM2 interrupt
}

void TIM2_IRQHandler(){
    if (TIM2->SR & TIM_SR_UIF)
    {
        // 清除更新中断标志
        TIM2->SR &= ~TIM_SR_UIF;

        // 切换 LED 状态
        led_toggle();
    }
}