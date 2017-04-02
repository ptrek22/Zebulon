#include "MKL25Z4.h"                    // Device header


//DO OPISANIA!!!!!
void uart_init(UART_MemMapPtr uartPtr, int sysclk, int baud);

void uart_putchar (UART_MemMapPtr channel, char ch);

char uart_getchar (UART_MemMapPtr channel);

void uart_enable_recieve_interrupt(UART_MemMapPtr uartPtr);

void uart_disable_recieve_interrupt(UART_MemMapPtr uartPtr);

void uart_enable_transfer_interrupt(UART_MemMapPtr uartPtr);

void uart_disable_transfer_interrupt(UART_MemMapPtr uartPtr);


