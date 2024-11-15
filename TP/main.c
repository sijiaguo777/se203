#include "clocks.h"
#include "led.h"
#include "uart.h"
#include "irq.h"
#include "matrix.h"
#include "buttons.h"
#include "timer.h"

extern uint8_t _binary_image_raw_start;
extern uint8_t _binary_image_raw_end;
extern int _binary_image_raw_size;

uint8_t frame[8 * 8 * 3];

int main(void)
{
    clocks_init();
    irq_init();
    uart_init(38400);
    uart_irq_init();
    led_init();
    // led(LED_GREEN);
    matrix_init();
    timer_init(1000000);
    
    while (1)
    {
        print_frame();
        
    }
    
    return 0;
}