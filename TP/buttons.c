# include "stm32l475xx.h"
# include "buttons.h"

void button_init(void) {
    // Activer l'horloge GPIOC
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;
    // PC13 en entrée
    GPIOC->MODER &= ~GPIO_MODER_MODE13_Msk;
    // Configurer PC13 en pull-up
    GPIOC->PUPDR &= ~GPIO_PUPDR_PUPD13_Msk;
    GPIOC->PUPDR |= GPIO_PUPDR_PUPD13_0;
    
    // Sélectionner la broche PC13 comme source d'IRQ pour EXTI13
    RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN; // Activer l'horloge SYSCFG
    SYSCFG->EXTICR[3] &= ~SYSCFG_EXTICR4_EXTI13_Msk; // Effacer EXTI13
    SYSCFG->EXTICR[3] |= SYSCFG_EXTICR4_EXTI13_PC; 

    // Configurer EXTI pour EXTI13
    EXTI->IMR1 |= EXTI_IMR1_IM13; // Activer l'interruption sur EXTI13
    EXTI->FTSR1 |= EXTI_FTSR1_FT13; // Déclenchement sur front descendant
    EXTI->RTSR1 &= ~EXTI_RTSR1_RT13; // Désactiver le déclenchement sur front montant

    // Activer l'interruption EXTI13 dans le NVIC
    NVIC_EnableIRQ(EXTI15_10_IRQn);
    // Configuration de PB14 pour contrôler LED2
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN; // Activer l'horloge pour GPIOB
    GPIOB->MODER &= ~GPIO_MODER_MODE14_Msk; // Effacer le mode de PB14
    GPIOB->MODER |= GPIO_MODER_MODE14_0; // Configurer PB14 en mode sortie
}

void EXTI15_10_IRQHandler(void) {

    // Effacer le flag d'interruption
    if (EXTI->PR1 & EXTI_PR1_PIF13){
        EXTI->PR1 |= EXTI_PR1_PIF13;
        GPIOB->ODR ^= GPIO_ODR_OD14;}
}


