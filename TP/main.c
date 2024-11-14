#include "clocks.h"
#include "led.h"
#include "uart.h"
#include "irq.h"
#include "matrix.h"
#include "buttons.h"

extern uint8_t *_binary_image_raw_start;
extern uint8_t *_binary_image_raw_end;
extern int _binary_image_raw_size;

uint8_t trame[8 * 8 * 3];

void USART1_IRQHandler(uint8_t *trame)
{
    static int index = 0;
    if (USART1->ISR & USART_ISR_RXNE)
    {
        trame[index] = uart_getchar();
        index++;
    }
    if (index >= sizeof(trame))
    {
        index = 0;
    }

    USART1->ICR = USART_ICR_ORECF;
}


int main(void)
{
    clocks_init();
    uart_init(38400);
    uart_puts(trame);

    print_frame();
    while(1){

    }
    return 0;
}