/*
 * M5TC-U4BN-0A2
 * -------------
 * Displays inputs from SDPT switch/rotary encoder as unsigned 4-bit numbers.
 * Authors: Akshat Sahay
 */

/*
 * Special Registers: 
 * ------------------
 * This code uses registers on the ATMEGA328P directly using AVR-C. 
 * Good reference: https://exploreembedded.com/wiki/Basics_of_AVR_%27C%27
 * Another good reference: https://www.youtube.com/watch?v=tBq3sO1Z-7o
 * 
 * We use registers directly since it makes the code run faster and more efficiently. 
 * 
 * The 328P has 3 port registers: PORTB, PORTC and PORTD. 
 * We access them to get inputs and send outputs using the MCU. 
 * 
 * DDRx:
 * -----
 *  - Stands for Data Direction Register. 
 *  - Determines whether the pins on the specified port are inputs(0) or outputs(1). 
 *  - For example: DDRD = 00001100, here all pins except pins 2 and 3 are inputs on PORTD. 
 *  - Corresponding Arduino function: pinMode(); 
 * 
 * PORTx:
 * ------
 *  - Physical port on the ATMEGA328P. 
 *  - Determines whether the pins on the specified port are HIGH(5V) or LOW(0V). 
 *  - For example: PORTB = 01100010, here all pins except pins 2, 5 and 6 are LOW. 
 *  - Corresponding Arduino function: digitalWrite(); 
 */

#define SEG_A PD4
#define SEG_B PD3
#define SEG_C PD2
#define SEG_D PB2
#define SEG_E PB1
#define SEG_F PD6
#define SEG_G PD5

#define DATA_0 PC0
#define DATA_1 PC1
#define DATA_2 PC2
#define DATA_3 PC3

#define K1 PC6
#define K2 PC4
#define K3 PC5

/* registers variables */
unsigned char num_displayed = 0;  // number displayed on the 7-segment  
unsigned char data_decimal = 0;   // data from PORTC in decimal 
unsigned char data_hex = 0;       // data from PORTC in hex, two digits each 

void setup() {
  // set PORTB and PORTD as OUTPUT 
  DDRB = 0xFF; 
  DDRD = 0xFF; 

  // set PORTC as INPUT + K1, K2, K3 as OUTPUT
  DDRC = 0x00; 
  DDRC |= (1 << K1) | (1 << K2) | (1 << K3);

  Serial.begin(9600); 
}

void loop() {
  // get DATA inputs from PORTC
  data_decimal = PINC; 

  // digits from 0 to 9 
  unsigned char ledDigits[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67};

  // refresh rate is 3 * 20 = 60ms
  for (unsigned char i = 0; i < 20; i++) {
    // display decimal to K1
    PORTC &= ~(1 << K1); 
    PORTC |= (1 << K2) | (1 << K3); 
    delay(1); 

    // display upper hex digit to K2
    PORTC &= ~(1 << K2); 
    PORTC |= (1 << K1) | (1 << K2); 
    delay(1); 

    // display lower hex digit to K3
    PORTC &= ~(1 << K3); 
    PORTC |= (1 << K1) | (1 << K2); 
    delay(1); 
  }
}
