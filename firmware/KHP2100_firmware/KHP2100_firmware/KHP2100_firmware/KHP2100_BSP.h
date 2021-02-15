/*
Board Support Package for KHP2100_firmware
Author: Kevin Nguyen
*/

#ifndef KHP2100_BSP_H
#define KHP2100_BSP_H

#define NUM_MODE 3
#define RED 0x06
#define GREEN 0x05
#define BLUE 0x03
#define YELLOW 0x04
#define MAGENTA 0x02
#define CYAN 0x01
#define WHITE 0x00
#define OFF 0x07

extern uint8_t selected_mode;
extern uint8_t last_mode;
enum light{D2, D3, D4, ALL};

// function prototypes
void portb_init(void); // initialize portb as digital input for the switches
void portc_init(void); // initialize portc as digital output for 2 LEDs
void portd_init(void); // initialize portd as digital output for the LED
void iterrupt_init(void); // initialize interrupt for mode switch
void debounce(void); // use a short delay to debounce switch
void control_LED(uint8_t light, uint8_t color); // control which LED and what color
void mode_0(void); // light show
void mode_1(void); // control lights
void mode_2(void); // bomb game
void start_sequence(uint8_t mode_num);
void light_show_0(void);
void light_show_1(void);
void light_show_2(void);

#endif
