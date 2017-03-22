#include "MKL25Z4.h"                    // Device header
#include "uart.h"


//
int main()
{
	uart_init(UART1_BASE_PTR, 1000, 9600);
	while(1)
	{
	uart_putchar(UART1_BASE_PTR, 'u');
	}
}
//UART 0
//RX - PTA14, PTB16, PTD6 (ALT 4)
//TX - PTA15, PTB17, PTD7 (ALT 4)


//UART 1
//RX - PTA18, PTC3, PTE1 (ALT 3)
//TX - PTA19, PTC4, PTE0 (ALT 3)

//UART 2
//RX - PTE22, (ALT4) PTD2, PTD4 (ALT 3)
//TX - PTE23, (ALT4) PTD3, PTD5 (ALT 3)

