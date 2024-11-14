#ifndef MATRIX_H
#define MATRIX_H

#include "stm32l475xx.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// Macros pour les broches du DM163
#define RST(x)  (x ? (GPIOC->BSRR = GPIO_BSRR_BS3) : (GPIOC->BSRR = GPIO_BSRR_BR3))
#define SB(x)   (x ? (GPIOC->BSRR = GPIO_BSRR_BS5) : (GPIOC->BSRR = GPIO_BSRR_BR5))
#define LAT(x)  (x ? (GPIOC->BSRR = GPIO_BSRR_BS4) : (GPIOC->BSRR = GPIO_BSRR_BR4))
#define SCK(x)  (x ? (GPIOB->BSRR = GPIO_BSRR_BS1) : (GPIOB->BSRR = GPIO_BSRR_BR1))
#define SDA(x)  (x ? (GPIOA->BSRR = GPIO_BSRR_BS4) : (GPIOA->BSRR = GPIO_BSRR_BR4))

// Macros pour les lignes de la matrice (C0 à C7)
#define ROW0(x) (x ? (GPIOB->BSRR = GPIO_BSRR_BS2) : (GPIOB->BSRR = GPIO_BSRR_BR2))
#define ROW1(x) (x ? (GPIOA->BSRR = GPIO_BSRR_BS15) : (GPIOA->BSRR = GPIO_BSRR_BR15))
#define ROW2(x) (x ? (GPIOA->BSRR = GPIO_BSRR_BS2) : (GPIOA->BSRR = GPIO_BSRR_BR2))
#define ROW3(x) (x ? (GPIOA->BSRR = GPIO_BSRR_BS7) : (GPIOA->BSRR = GPIO_BSRR_BR7))
#define ROW4(x) (x ? (GPIOA->BSRR = GPIO_BSRR_BS6) : (GPIOA->BSRR = GPIO_BSRR_BR6))
#define ROW5(x) (x ? (GPIOA->BSRR = GPIO_BSRR_BS5) : (GPIOA->BSRR = GPIO_BSRR_BR5))
#define ROW6(x) (x ? (GPIOB->BSRR = GPIO_BSRR_BS0) : (GPIOB->BSRR = GPIO_BSRR_BR0))
#define ROW7(x) (x ? (GPIOA->BSRR = GPIO_BSRR_BS3) : (GPIOA->BSRR = GPIO_BSRR_BR3))

typedef enum{
  RED2GREEN,
	GREEN2BLUE,
	BLUE2RED
} state_color;

typedef struct {
  uint8_t r;
  uint8_t g;
  uint8_t b;
} rgb_color;

void matrix_init();
void pulse_SCK();
void pulse_LAT();
void send_byte(uint8_t val);
void mat_set_row(int row, const rgb_color *val);
void activate_row(int row);
void deactivate_rows();
void init_bank0();
void test_pixels();

#endif