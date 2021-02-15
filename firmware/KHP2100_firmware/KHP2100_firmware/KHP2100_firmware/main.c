/*
 * KHP2100_firmware.c
 *
 * Created: 1/23/2021 2:59:22 PM
 * Author : nguyenkevin0913
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "KHP2100_BSP.h"


uint8_t flag = 0;

// function main begins program execution
int main(void)
{
	// setup mcu
	portb_init();
	portc_init();
	portd_init();
	interrupt_init();
	void (*mode_ptr[NUM_MODE])(void) = {mode_0, mode_1, mode_2};
	uint8_t run = 4;
	sei();
	// loop
    while (1) {
		run = selected_mode;
		mode_ptr[selected_mode](); // run the selected mode
		last_mode = run;
	} // end while
} // end function main

// ISR for PCINT0
ISR(PCINT0_vect) {
	flag = ++flag % 2;
	if (flag == 0) {
		selected_mode = (++selected_mode) % NUM_MODE;
	} // end if
	debounce();
} // end ISR PCINT7
