#define STM32L475xx
#include "stm32l475xx.h"
#include "uart.h"
#include "clocks.h"
#include <stddef.h>

// UART Ports:
// ===================================================
// PB.6 = USART1_TX (AF7)  |  PB.7 = USART1_RX (AF7)

void uart_init(int baudrate)
{
    // activer l'horloge de port B
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;

    // PB6: TX (AF7)
    GPIOB->MODER = (GPIOB->MODER & ~GPIO_MODER_MODE6_Msk) | (0b10 << GPIO_MODER_MODE6_Pos);
    GPIOB->AFR[0] = (GPIOB->AFR[0] & ~GPIO_AFRL_AFSEL6_Msk) | (0b0111 << GPIO_AFRL_AFSEL6_Pos);

    // PB7: RX (AF7)
    GPIOB->MODER = (GPIOB->MODER & ~GPIO_MODER_MODE7_Msk) | (0b10 << GPIO_MODER_MODE7_Pos);
    GPIOB->AFR[0] = (GPIOB->AFR[0] & ~GPIO_AFRL_AFSEL7_Msk) | (0b0111 << GPIO_AFRL_AFSEL7_Pos);

    // activer l'horloge de l'USART1
    RCC->APB2ENR |= RCC_APB2ENR_USART1EN;

    // choisir PCLK comme source de l'horloge de l'USART1
    // par défaut, c'est déjà le cas

    // faire un reset du port série par précaution
    RCC->APB2RSTR |= RCC_APB2RSTR_USART1RST;
    RCC->APB2RSTR = (RCC->APB2RSTR & ~RCC_APB2RSTR_USART1RST);

    // Desactiver USART1
    USART1->CR1 &= ~USART_CR1_UE;

    // configurer la vitesse du port série à 38400 bauds
    USART1->BRR = 80000000 / baudrate;

    // activer le port série
    USART1->CR1 |= USART_CR1_UE;
    // activer l'émission et la réception
    USART1->CR1 |= USART_CR1_RE;
    USART1->CR1 |= USART_CR1_TE;
}

void uart_putchar(uint8_t c)
{
    // attend que l'USART1 soit prêt à transmettre quelque chose
    while (!(USART1->ISR & USART_ISR_TXE))
        ;
    // puis lui demande de l'envoyer
    USART1->TDR = c;
}

uint8_t uart_getchar()
{
    while (!(USART1->ISR & USART_ISR_RXNE))
        ;
    uint8_t byte = (uint8_t)(USART1->RDR & USART_RDR_RDR);
    return byte;
}

void uart_puts(const char *s)
{
    // tant qu'on n'a pas atteint le caractère nul
    while (*s)
    {
        // on envoie le caractère
        uart_putchar(*s);
        // et on passe au suivant
        s++;
    }
    uart_putchar('\r');
    uart_putchar('\n');
}

void uart_gets(char *s, size_t size)
{
    size_t i = 0;
    while (i < size)
    {
        char c = (char)(uart_getchar());
        if (c == '\n' || c == '\r')
            break;
        s[i++] = c;
    }

    s[i] = '\0';
}

uint32_t calculate_checksum(uint32_t num_bytes)
{
    uint32_t sum = 0;
    for (uint32_t i = 0; i < num_bytes; i++)
    {
        uint8_t byte = uart_getchar();
        sum += byte;
    }
    return sum;
}


void USART1_IRQHandler()
{
    static int index = 0;
    uint8_t byte_received = 0;

    byte_received = uart_getchar();

    if (byte_received == 0xff || index == 192)
    {
        index = 0;
    }
    else
    {
        frame[index] = byte_received;
        index++;
    }
}


void uart_irq_init(void)
{
    USART1->CR1 |= USART_CR1_RXNEIE;
    NVIC_EnableIRQ(USART1_IRQn);
}
