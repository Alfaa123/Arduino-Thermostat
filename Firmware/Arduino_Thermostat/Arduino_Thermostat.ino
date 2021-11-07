#define backlight_pin 10

#define UP_PIN 6
#define DOWN_PIN 7
#define LEFT_PIN 8
#define RIGHT_PIN 9

#define MAX_MENU_ITEMS 3

#define FAN 3
#define HEAT 4
#define COOL 5

#define HEATING 2
#define COOLING 1

#define CIRC_INTERVAL 1200000

#define TEMP_HYSTERESIS 1

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
bool tempAdjustment = 0;
bool circFanInterval = 0;
char mode = 0;
char fan = 0;
char menu = 0;
long double updateLCDOldMillis;
long double circFanOldMillis;

LiquidCrystal lcd(A1, A0, A5, A4, A3, A2);
DHT dht(2, DHT22);
BigNums2x2 bigNum(TREK);
// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(UP_PIN, INPUT);
  pinMode(DOWN_PIN, INPUT);
  pinMode(LEFT_PIN, INPUT);
  pinMode(RIGHT_PIN, INPUT);

  pinMode(FAN, OUTPUT);
  pinMode(HEAT, OUTPUT);
  pinMode(COOL, OUTPUT);

  ButtonConfig* buttonConfig = ButtonConfig::getSystemButtonConfig();
  buttonConfig->setEventHandler(handleButtonEvent);
  buttonConfig->setFeature(ButtonConfig::kFeatureClick);


  //Serial.begin(9600);
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
  if (millis() - updateLCDOldMillis > 10000) {
    updateDHT();
    printTemp();
    printMenu(menu);
    updateTempControl();
    updateFanControl();
    updateLCDOldMillis = millis();
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
  if (menuNum < MAX_MENU_ITEMS) {
    printMenuItem(menuNum + 1);
  }
  else {
    lcd.print("         ");
    //printMenuItem(0);
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
      lcd.print(" ");
      break;
    case 2:
      lcd.print("Mode:");
      switch (mode) {
        case 0:
          lcd.print("OFF ");
          break;
        case COOLING:
          lcd.print("COOL");
          break;
        case HEATING:
          lcd.print("HEAT");
          break;
      }
      break;
    case 3:
      lcd.print("Fan:");
      switch (fan) {
        case 0:
          lcd.print("AUTO ");
          break;
        case 1:
          lcd.print("ON   ");
          break;
        case 2:
          lcd.print("CIRC ");
          break;
      }
      break;
  }
}

void updateTempControl() {
  switch (mode) {
    case 0:
      digitalWrite(HEAT, LOW);
      digitalWrite(COOL, LOW);
      tempAdjustment = 0;
      break;
    case COOLING:
      if (setpoint < temperature - TEMP_HYSTERESIS) {
        tempAdjustment = 1;
        digitalWrite(COOL, HIGH);
      }
      else if (setpoint > temperature + TEMP_HYSTERESIS) {
        tempAdjustment = 0;
        digitalWrite(COOL, LOW);
      }
      break;
    case HEATING:
      if (setpoint > temperature + TEMP_HYSTERESIS) {
        tempAdjustment = 1;
        digitalWrite(HEAT, HIGH);
      }
      else if (setpoint < temperature - TEMP_HYSTERESIS) {
        tempAdjustment = 0;
        digitalWrite(HEAT, LOW);
      }
      break;
  }
}

void updateFanControl() {
  switch (fan) {
      if (tempAdjustment) {
        digitalWrite(FAN, HIGH);
      }
      else {
      case 0:
        digitalWrite(FAN, LOW);
        circFanInterval = 0;
        break;
      case 1:
        digitalWrite(FAN, HIGH);
        circFanInterval = 0;
        break;
      case 2:
        if (millis() - circFanOldMillis > CIRC_INTERVAL) {
          circFanInterval = !circFanInterval;
        }
        digitalWrite(FAN, circFanInterval);
        circFanOldMillis = millis();
        break;
      }
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
          if (menu < 0) {
            menu = 0;
          }
          printMenu(menu);
          break;
        case DOWN_PIN:
          menu++;
          if (menu > MAX_MENU_ITEMS) {
            menu = MAX_MENU_ITEMS;
          }
          printMenu(menu);
          break;
        case LEFT_PIN:
          switch (menu) {
            case 0:
              break;
            case 1:
              setpoint--;
              if (setpoint < 50) {
                setpoint = 50;
              }
              break;
            case 2:
              mode--;
              if (mode < 0) {
                mode = 0;
              }
              break;
            case 3:
              fan--;
              if (fan < 0) {
                fan = 0;
              }
              break;
          }
          printMenu(menu);
          break;
        case RIGHT_PIN:
          switch (menu) {
            case 0:
              break;
            case 1:
              setpoint++;
              if (setpoint > 90) {
                setpoint = 90;
              }
              break;
            case 2:
              mode++;
              if (mode > 2) {
                mode = 2;
              }
              break;
            case 3:
              fan++;
              if (fan > 2) {
                fan = 2;
              }
              break;
          }
          printMenu(menu);
          break;


      }
      break;
  }
}
