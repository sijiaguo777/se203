#ifndef UART_H
#define UART_H
#define STM32L475xx
#include "stm32l475xx.h"
#include "stm32l4xx.h"
#include <stdint.h>
#include <stddef.h>

// Fonction d'initialisation UART
void uart_init(void);

// Envoyer un caractère
void uart_putchar(uint8_t c);

// Recevoir un caractère
uint8_t uart_getchar(void);

// Envoyer une chaîne de caractères (terminée par un caractère nul)
void uart_puts(const char *s);

// Recevoir une chaîne de caractères jusqu'à un saut de ligne ou une longueur maximale
void uart_gets(char *s, size_t size);

// Calculer la somme de contrôle des données reçues par UART
uint32_t calculate_checksum(uint32_t num_bytes);

#endif // UART_H
