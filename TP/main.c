#include "stm32l475xx.h"
#include "clocks.h"
#include "matrix.h"
#include <stddef.h>
#include <stdint.h>

// UART Ports:
// ===================================================
// PB.6 = USART1_TX (AF7)  |  PB.7 = USART1_RX (AF7)

extern uint8_t* _binary_image_raw_start;
extern uint8_t* _binary_image_raw_end;
extern int _binary_image_raw_size;


int main()
{
    matrix_init();
    // test_pixels();
    
    while(1){
        display_image_static((uint8_t*)&_binary_image_raw_start, (uint8_t*)&_binary_image_raw_end, (int)_binary_image_raw_size);
    }
   
    return 0;
}