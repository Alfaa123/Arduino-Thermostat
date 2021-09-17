#define backlight 10

#include <LiquidCrystal.h>
#include <BigNums2x2.h>


LiquidCrystal lcd(A1, A0, A5, A4, A3, A2);
BigNums2x2 bigNum(TREK);

// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(backlight, OUTPUT);
  digitalWrite(backlight, HIGH);
  lcd.begin(16, 2);
  bigNum.print(70, 2, 11, ' ');
}

// the loop function runs over and over again forever
void loop() {
}
