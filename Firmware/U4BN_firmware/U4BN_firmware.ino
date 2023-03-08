/*
 * M5TC-U4BN-0A2
 * -------------
 * Displays inputs from SDPT switch/rotary encoder as unsigned 4-bit numbers.
 * Authors: Akshat Sahay, Samridh Tuteja
 */

/*
 * Special Registers: 
 * ------------------
 * This code uses registers on the ATMEGA328P directly using AVR-C. 
 * Good reference: https://exploreembedded.com/wiki/Basics_of_AVR_%27C%27
 * Another good reference: https://www.youtube.com/watch?v=tBq3sO1Z-7o
 * 
 * We use registers directly TODO:{B/C it is better then teh arduino library sine it does not hide how the hardware works}. 
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
 *  - Determines whether the pins on the specified port are set HIGH(5V) or LOW(0V) in our code. 
 *  - For example: PORTB = 01100010, here we set all pins except pins 2, 5 and 6 are LOW. 
 *  - Corresponding Arduino function: digitalWrite(); 
 *  
 * PINx:
 * ------
 *  - Physical port on the ATMEGA328P. 
 *  - Checks the value of pins, either HIGH(5V) or LOW(0V). 
 *  - For example: data_decimal = PINC, here we assign the values of PORTC to the variable data_decimal. 
 *  - Corresponding Arduino function: digitalRead(); 
 */

#define SEG_DELAY_MS 1

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
  DDRC = (0 << K1) | (1 << K2) | (1 << K3);
}

void loop() {
  // get DATA inputs from PORTC, we only want lower 4 bits 
  data_decimal = PINC & 0b00001111; 

  // display output to K1
  number_to_seg(data_decimal);
  
  PORTC |= (1 << K1);
  delay(SEG_DELAY_MS);
  PORTC &= ~(1 << K1);
  clear_seg();

  // display output to K2
  number_to_seg(data_decimal % 10);
  
  PORTC |= (1 << K2);
  delay(SEG_DELAY_MS);
  PORTC &= ~(1 << K2);
  clear_seg();

  // display output to K3
  number_to_seg(data_decimal / 10);
  
  PORTC |= (1 << K3);
  delay(SEG_DELAY_MS);
  PORTC &= ~(1 << K3);
  clear_seg();
}

void clear_seg() {
  PORTB &= ~(1 << SEG_D)|(1 << SEG_E);
  PORTD &= ~(
       (1 << SEG_A)
      |(1 << SEG_B)
      |(1 << SEG_C)
      |(1 << SEG_F)
      |(1 << SEG_G)
  );
}

/* turn on seven-segment signals based on num  */
void number_to_seg(unsigned char num) {
  if (num == 0) {
    // SEG_A ON, SEG_B ON, SEG_C ON, SEG_D ON, SEG_E ON, SEG_F ON, SEG_G OFF
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_F); 
  }

  if (num == 1) {
    // SEG_A OFF, SEG_B ON, SEG_C ON, SEG_D OFF, SEG_E OFF, SEG_F OFF, SEG_G OFF
    PORTB = 0x00; 
    PORTD = (1 << SEG_B) | (1 << SEG_C); 
  }

  if (num == 2) {
    // SEG_A ON, SEG_B ON, SEG_C OFF, SEG_D ON, SEG_E ON, SEG_F OFF, SEG_G ON
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_G); 
  }

  if (num == 3) { 
    // SEG_A ON, SEG_B ON, SEG_C ON, SEG_D ON, SEG_E OFF, SEG_F OFF, SEG_G ON
    PORTB = (1 << SEG_D); 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_G); 
  }

  if (num == 4) {
    // SEG_A OFF, SEG_B ON, SEG_C ON, SEG_D OFF, SEG_E OFF, SEG_F ON, SEG_G ON 
    PORTB = 0x00;
    PORTD = (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 5) {
    // SEG_A ON, SEG_B OFF, SEG_C ON, SEG_D ON, SEG_E OFF, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_D); 
    PORTD = (1 << SEG_A) | (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 6) {
    // SEG_A ON, SEG_B OFF, SEG_C ON, SEG_D ON, SEG_E ON, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 7) {
    // SEG_A ON, SEG_B ON, SEG_C ON, SEG_D OFF, SEG_E OFF, SEG_F OFF, SEG_G OFF
    PORTB = 0; 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_C); 
  }

  if (num == 8) {
    // SEG_A ON, SEG_B ON, SEG_C ON, SEG_D ON, SEG_E ON, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 9) {
    // SEG_A ON, SEG_B ON, SEG_C ON, SEG_D ON, SEG_E OFF, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_D); 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 10) {
    // SEG_A ON, SEG_B ON, SEG_C ON, SEG_D OFF, SEG_E ON, SEG_F ON, SEG_G ON 
    PORTB = (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 11) {
    // SEG_A OFF, SEG_B OFF, SEG_C ON, SEG_D ON, SEG_E ON, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_C) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 12) {
    // SEG_A ON, SEG_B OFF, SEG_C OFF, SEG_D ON, SEG_E ON, SEG_F ON, SEG_G OFF
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_F); 
  }

  if (num == 13) {
    // SEG_A OFF, SEG_B ON, SEG_C ON, SEG_D ON, SEG_E ON, SEG_F OFF, SEG_G ON
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_B) | (1 << SEG_C) | (1 << SEG_G); 
  }

  if (num == 14) {
    // SEG_A ON, SEG_B OFF, SEG_C OFF, SEG_D ON, SEG_E ON, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_D) | (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_F) | (1 << SEG_G); 
  }

  if (num == 15) {
    // SEG_A ON, SEG_B OFF, SEG_C OFF, SEG_D OFF, SEG_E ON, SEG_F ON, SEG_G ON
    PORTB = (1 << SEG_E); 
    PORTD = (1 << SEG_A) | (1 << SEG_F) | (1 << SEG_G); 
  }
}
