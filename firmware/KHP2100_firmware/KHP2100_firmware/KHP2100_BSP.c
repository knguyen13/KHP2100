/*
Board Support Package for KHP2100_firmware
*/

#include <avr/io.h>
#include <util/delay.h>
#include "KHP2100_BSP.h"

uint8_t selected_mode = 0;
uint8_t last_mode = 4;
// game 1 
uint8_t butt_status = 0;
// game 3
uint8_t bomb = 3;
uint8_t mine_1 = 1;
uint8_t mine_2 = 1;
uint8_t mine_3 = 1;

// function portb_init configures PB0, PB1, PB2, PB7 as digital inputs with pull up resistors
void portb_init(void) {
	DDRB &= (0 << PINB0) | (0 << PINB1) | (0 << PINB2) | (0 << PINB7); // set as digital inputs
	PORTB |= (1 << PINB0) | (1 << PINB1) | (1 << PINB2) | (1 << PINB7); // enable pull up resistors
} // end function portb_init

// function portc_init configures PC0, PC1, PC2 as digital outputs 
void portc_init(void) {
	DDRC |= (1 << PINC0) | (1 << PINC1) | (1 << PINC2) | (1 << PINC3) | (1 << PINC4) | (1 << PINC5); // set as digital outputs
	PORTC |= (1 << PINC0) | (1 << PINC1) | (1 << PINC2) | (1 << PINC3) | (1 << PINC4) | (1 << PINC5); // initialize to HIGH
} // end function portc_init

// function portd_init configures PD0, PD1, PD2 as digital outputs
void portd_init(void) {
	DDRD |= (1 << PIND0) | (1 << PIND1) | (1 << PINC2); // set as digital outputs
	PORTD |= (1 << PIND0) | (1 << PIND1) | (1 << PIND2); // initialize to HIGH
} // end function portd_init

// function mode_init(void) configures PB7 as interrupt
void interrupt_init(void) {
	PCICR |= (1 << 0);
	PCMSK0 |= (1 << PCINT7);
} // end function mode_init

// function delay prevents switch bounce
void debounce(void) {
	_delay_ms(100);
} // end function delay

uint8_t read_Button(void) {
	return (PINB & 0x07);
}

// function control_LED
void control_LED(uint8_t light, uint8_t color) {
	if (light == 0) { // D2
		PORTC |= 0x07; // clear PC0, PC1, PC2
		PORTC &= 0xF8 + color; // insert new value for PC0, PC1, PC2
	} else if (light == 1) { // D3
		PORTC |= 0x38; // clear PC3, PC4, PC5
		PORTC &= 0x07 + (color << 3); // insert new value for PC3, PC4, PC5
	} else if (light == 2) { // D4
		PORTD |= 0x07; // clear PD0, PD1, PD2
		PORTD &= color; // insert new value for PD0, PD1, PD2
	} else { // all LEDS
		// clear all LEDS and insert new values
		PORTC |= 0xFF;
		PORTC &= color + (color << 3);
		PORTD |= 0x07;
		PORTD &= color;
	} // end if-else
} // end function control_LED

// function mode_0 shines the LEDs in a pattern
void mode_0(void) {
	start_sequence(0);
	if ((read_Button() & 0x7) != 0x7) {
		butt_status = read_Button() & 0x7;
	}
	if (butt_status == 0x3) {
		light_show_2();
	} else if (butt_status == 0x5) {
		light_show_1();
	} else {
		light_show_0();
	}
} // end function mode_0

// function mode_1 allows the user to control the LED through the push button's
void mode_1(void) {
	start_sequence(1);
	switch(read_Button()) {
		case 0x01:
			control_LED(ALL, CYAN);
			break;
		case 0x02:
			control_LED(ALL, MAGENTA);
			break;
		case 0x03:
			control_LED(ALL, BLUE);
			break;
		case 0x04:
			control_LED(ALL, YELLOW);
			break;
		case 0x05:
			control_LED(ALL, GREEN);
			break;
		case 0x06:
			control_LED(ALL, RED);
			break;
		case 0x00:
			control_LED(ALL, WHITE);
			break;
		default:
			control_LED(ALL, OFF);// turn off PC0, PC1, PC2
	} // end switch
	debounce();
} // end function mode_1

// function mode_2, one led/switch pair is bomb. press wrong one and the LED's turn red.
void mode_2(void) {
	start_sequence(2);
	if(bomb == 3) {
		bomb = srand(read_Button()) % 3;
	}
	if ((mine_1 == 1) && (mine_2 == 1) && (mine_3 == 1)) {
		bomb = rand() % 3;
		control_LED(ALL, OFF);
		control_LED(ALL, BLUE);
		_delay_ms(200);
		control_LED(ALL, OFF);
		control_LED(ALL, CYAN);
		mine_1 = 0;
		mine_2 = 0;
		mine_3 = 0;
	} 
	switch((read_Button() & 0x7)) {
		case 0x6:
			control_LED(D4, OFF);
			if(bomb == 0) {
				control_LED(D4, RED);
			} else {
				control_LED(D4, GREEN);
			} // end if-else
			mine_1 = 1;
			_delay_ms(500);
			break;
		case 0x5:
			control_LED(D3, OFF);
			if(bomb == 1) {
				control_LED(D3, RED);
			} else {
				control_LED(D3, GREEN);
			} // end if-else
			mine_2 = 1;
			_delay_ms(500);
			break;
		case 0x3:
			control_LED(D2, OFF);
			if(bomb == 2) {
				control_LED(D2, RED);								
			} else {
				control_LED(D2, GREEN);
			} // end if-else
			mine_3 = 1;
			_delay_ms(500);
			break;
	} // end switch case
} // end function mode_2

// function start_sequence 
void start_sequence(uint8_t mode_num) {
	if(last_mode != selected_mode) {
		for(int i = 0; i < 2; ++i) {
			switch(mode_num) {
				case 0: 
				control_LED(ALL, RED);
				break;
				case 1:
				control_LED(ALL, GREEN);
				break;
				case 2:
				control_LED(ALL, BLUE);
				break;
				case 3:
				control_LED(ALL, YELLOW);
				break;
			} // end  switch case
			_delay_ms(500);
			control_LED(ALL, OFF);
			_delay_ms(500);
		} // end for
	} // end if
} // end function start_sequence

void light_show_0(void) {
	control_LED(D4, RED);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D3, YELLOW);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D2, GREEN);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D3, CYAN);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D4, BLUE);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D3, MAGENTA);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D2, RED);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D3, YELLOW);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D4, GREEN);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D3, CYAN);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D2, BLUE);
	_delay_ms(100);
	control_LED(ALL, OFF);
	control_LED(D3, MAGENTA);
	_delay_ms(100);
	control_LED(ALL, OFF);
}

void light_show_1(void) {
	control_LED(ALL, RED);
	_delay_ms(1000);
	control_LED(ALL,OFF);
	control_LED(ALL, YELLOW);
	_delay_ms(1000);
	control_LED(ALL,OFF);
	control_LED(ALL, GREEN);
	_delay_ms(1000);
	control_LED(ALL,OFF);
	control_LED(ALL, CYAN);
	_delay_ms(1000);
	control_LED(ALL,OFF);
	control_LED(ALL, BLUE);
	_delay_ms(1000);
	control_LED(ALL,OFF);
	control_LED(ALL, MAGENTA);
	_delay_ms(1000);
	control_LED(ALL,OFF);
	control_LED(ALL, WHITE);
	_delay_ms(1000);
	control_LED(ALL,OFF);
}

void light_show_2(void) {
	control_LED(D2, RED);
	_delay_ms(150);
	control_LED(ALL, OFF);
	control_LED(D3, WHITE);
	_delay_ms(150);
	control_LED(ALL, OFF);
	control_LED(D4, BLUE);
	_delay_ms(150);
	control_LED(ALL,OFF);
}