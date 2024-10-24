#include "led.h"

int main(void)
{
    led_init();
    for (int i = 0; i < 1000; i++)
    {
        led(LED_GREEN);
        asm volatile("nop");
        led(LED_GREEN_OFF);
    }
    led(LED_GREEN_OFF);
    led(LED_BLUE);
    led(LED_YELLOW);
    led(LED_GREEN);

    led(LED_BLUE_YELLOW_OFF);
    led(LED_GREEN_OFF);
    return 0;
}