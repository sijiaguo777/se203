#ifndef uart_h
#define uart_h
#include <stdint.h>
#include <stddef.h>

#include "stm32l475xx.h"
#include "stm32l4xx.h"
#include "clocks.h"

void uart_init(int baudrate);
void uart_putchar(uint8_t c);
uint8_t uart_getchar();
void uart_puts(const char *s);
void uart_gets(char *s, size_t size);
uint32_t calculate_checksum(uint32_t num_bytes);
void print_frame();
extern uint8_t trame[8 * 8 * 3];
#endif

