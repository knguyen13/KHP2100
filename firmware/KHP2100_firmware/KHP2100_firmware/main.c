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

int main(void)
{
	portb_init(); // initialize port b for digital inputs (3 user buttons + mode button)
	portc_init(); // initialize port c for digital outputs (2 leds)
	portd_init(); // initialize port d for digital output (1 led)
	interrupt_init(); // configure interrupt for PB7 (mode button)
	void (*mode_ptr[NUM_MODE])(void) = {mode_0, mode_1, mode_2}; // array of function pointers to hold different modes of device
	uint8_t run_mode = 4; 
	sei(); // enable interrupt
	// loop
    while (1) {
		run_mode = selected_mode; // save mode to be run in case selected mode changes in the middle of executing a mode
		mode_ptr[selected_mode](); // run the selected mode
		last_mode = run_mode; // save mode that ran
	} // end while
} // end function main

// ISR for PCINT0
ISR(PCINT0_vect) {
	flag = ++flag % 2; // ISR is triggered for both upstroke and downstroke of the switch. use flag to remove duplicity
	if (flag == 0) {
		selected_mode = (++selected_mode) % NUM_MODE; // cycle through modes
	} // end if
	debounce();
} // end ISR PCINT7
