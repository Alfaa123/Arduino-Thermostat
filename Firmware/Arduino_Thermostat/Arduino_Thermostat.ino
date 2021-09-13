#define backlight_pin 10

#define UP_PIN 6
#define DOWN_PIN 7
#define LEFT_PIN 8
#define RIGHT_PIN 9

#include <AceButton.h>
using namespace ace_button;
#include <LiquidCrystal.h>
#include <BigNums2x2.h>
#include "DHT.h"

void backlight(bool);
void handleButtonEvent(AceButton*, uint8_t, uint8_t);

AceButton buttonUp(UP_PIN);
AceButton buttonDown(DOWN_PIN);
AceButton buttonLeft(LEFT_PIN);
AceButton buttonRight(RIGHT_PIN);

int humidity, temperature;
int setpoint = 75;
char mode = 0;
char fan = 0;
char menu = 0;
long double oldMillis;

LiquidCrystal lcd(A1, A0, A5, A4, A3, A2);
DHT dht(2, DHT22);
BigNums2x2 bigNum(TREK);
// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);

  ButtonConfig* buttonConfig = ButtonConfig::getSystemButtonConfig();
  buttonConfig->setEventHandler(handleButtonEvent);
  buttonConfig->setFeature(ButtonConfig::kFeatureClick);
  //buttonConfig->setFeature(ButtonConfig::kFeatureDoubleClick);
  //buttonConfig->setFeature(ButtonConfig::kFeatureLongPress);
  //buttonConfig->setFeature(ButtonConfig::kFeatureRepeatPress);

  Serial.begin(9600);
  pinMode(backlight_pin, OUTPUT);
  lcd.begin(16, 2);
  dht.begin();
  backlight(1);
}

// the loop function runs over and over again forever
void loop() {
  buttonUp.check();
  buttonDown.check();
  buttonLeft.check();
  buttonRight.check();
  if (millis() - oldMillis > 2000) {
    updateDHT();
    printTemp();
    printMenu(menu);
    oldMillis = millis();
  }
}

void backlight(bool direction) {
  for (int x = 0; x < 255; x++) {
    delay(2);
    if (direction) {
      analogWrite(10, x);
    }
    else {
      analogWrite(10, 255 - x);
    }
  }

}

void printTemp() {
  bigNum.print(temperature, 2, 11, ' ');
}

void updateDHT() {
  temperature = dht.readTemperature(true);
  humidity = dht.readHumidity();
}

void printMenu(char menuNum) {
  lcd.setCursor(0, 0);
  printMenuItem(menuNum);
  lcd.setCursor(0, 1);
  if (menuNum < 5) {
    printMenuItem(menuNum + 1);
  }
  else {
    printMenuItem(0);
  }
}

void printMenuItem(char itemNum) {
  switch (itemNum) {
    case 0:
      lcd.print("Humid:");
      lcd.print(humidity);
      lcd.print("% ");
      break;
    case 1:
      lcd.print("Setpt:");
      lcd.print(setpoint);
      break;
    case 2:
      lcd.print("Mode:");
      switch (mode) {
        case 0:
          lcd.print("OFF");
          break;
        case 1:
          lcd.print("COOL");
          break;
        case 2:
          lcd.print("HEAT");
          break;
      }
      break;
    case 3:
      lcd.print("Fan:");
      switch (fan) {
        case 0:
          lcd.print("AUTO");
          break;
        case 1:
          lcd.print("ON");
          break;
        case 2:
          lcd.print("CIRC");
          break;
      }
      break;
  }
}

void handleButtonEvent(AceButton* button, uint8_t eventType, uint8_t buttonState) {

  // Print out a message for all events, for both buttons.
  //Serial.print(F("handleEvent(): pin: "));
  //Serial.print(button->getPin());
  //Serial.print(F("; eventType: "));
  //Serial.print(eventType);
  //Serial.print(F("; buttonState: "));
  //Serial.println(buttonState);

  // Control the LED only for the Pressed and Released events of Button 1.
  // Notice that if the MCU is rebooted while the button is pressed down, no
  // event is triggered and the LED remains off.
  switch (eventType) {
    case AceButton::kEventPressed:
      break;
    case AceButton::kEventReleased:
      break;
    case AceButton::kEventClicked:
      switch (button->getPin()) {
        case UP_PIN:
        menu = menu - 1;
          break;
        case DOWN_PIN:
        menu++;
          break;
        case LEFT_PIN:
          break;
        case RIGHT_PIN:
          break;


      }
      break;
  }
}
