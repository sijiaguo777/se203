#define STM32L475xx
#include "stm32l475xx.h"
#include "stm32l4xx.h"
#include "clocks.h"
#include "uart.h"
#include <stddef.h>
#include <stdint.h>

// UART Ports:
// ===================================================
// PB.6 = USART1_TX (AF7)  |  PB.7 = USART1_RX (AF7)

int main()
{
    clocks_init();
    uart_init();

    // uart_puts("Hello World!");

    // programme d'écho
    // uart_puts("Tapez quelque chose:");
    // char buffer[100];
    // while (1)
    // {
    //     uart_gets(buffer, sizeof(buffer) - 1);
    //     uart_puts("Vous avez tapé: ");
    //     uart_puts(buffer);
    // }

    // programme de checksum
    uart_puts("Checksum 32: \n");
    while (1)
    {
        uint32_t checksum = calculate_checksum(1000);
        uart_putchar((checksum >> 24) & 0xFF);
        uart_putchar((checksum >> 16) & 0xFF);
        uart_putchar((checksum >> 8) & 0xFF);
        uart_putchar(checksum & 0xFF);
        
        uart_putchar('\r');
        uart_putchar('\n');
    }

    return 0;
}