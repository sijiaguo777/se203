#define STM32L475xx
#include "stm32l475xx.h"
#include "clocks.h"
#include "matrix.h"
#include <stddef.h>
#include <stdint.h>

// UART Ports:
// ===================================================
// PB.6 = USART1_TX (AF7)  |  PB.7 = USART1_RX (AF7)



int main()
{
    matrix_init();
    test_pixels();

    return 0;
}