#include "MKL25Z4.h"                    // Device header


void uart_init(UART_MemMapPtr uartPtr, int sysclk, int baud);
void uart_putchar (UART_MemMapPtr channel, char ch);
char uart_getchar (UART_MemMapPtr channel);

