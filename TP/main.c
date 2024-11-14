#include "clocks.h"
#include "led.h"
#include "uart.h"
#include "irq.h"
#include "matrix.h"
#include "buttons.h"

// int infini(){
//     int i = 1;
//     while (1)
//     {
//     }
//     return 0;
// }

// int fibo(int n){
//     if (n == 0) {
//         return 0;
//     } else if (n == 1) {
//         return 1;
//     } else {
//         return fibo(n - 1) + fibo(n - 2);
//     }
// }

extern uint8_t _binary_image_raw_start;
extern uint8_t _binary_image_raw_end;
extern int _binary_image_raw_size;

int main(void) {
    clocks_init();
    irq_init();
    led_init();
    matrix_init();
    button_init();
    uart_init(); 

    while (1)
    {
        display_image_static(&_binary_image_raw_start, &_binary_image_raw_end, _binary_image_raw_size);
    }

    return 0;
}