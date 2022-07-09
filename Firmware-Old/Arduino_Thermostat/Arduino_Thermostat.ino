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

#define LCD_TIMEOUT 10000

#define THERMOSTAT_UPDATE_RATE 5000

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

int humidity;
float temperatureArray[10];
int temperature;
char tempIndex = 0;
int setpoint = 75;
bool tempAdjustment = 0;
bool circFanInterval = 0;
bool backlightStatus = 0;
char mode = 0;
char fan = 0;
char menu = 0;
long double updateLCDOldMillis;
long double circFanOldMillis;
long double LCDTimeoutOldMillis;
long double thermostatControlOldMillis;

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
  for (int x = 0; x < 3; x++) {
    temperatureArray[x] = dht.readTemperature(true);
  }
  backlight(1);
  LCDTimeoutOldMillis = millis();
}

// the loop function runs over and over again forever
void loop() {
  buttonUp.check();
  buttonDown.check();
  buttonLeft.check();
  buttonRight.check();

  if  (millis() - LCDTimeoutOldMillis > LCD_TIMEOUT) {
    backlight(0);
    menu = 0;
  }
  else {
    backlight(1);
  }

  if (millis() - updateLCDOldMillis > THERMOSTAT_UPDATE_RATE) {
    updateDHT();
    printTemp();
    printMenu(menu);
    updateLCDOldMillis = millis();
  }
  if (millis() - thermostatControlOldMillis > 10000){
    updateTempControl();
    updateFanControl();
    thermostatControlOldMillis = millis();
  }
}

void backlight(bool direction) {
  if (backlightStatus ^ direction) {
    for (int x = 0; x < 255; x++) {
      delay(1);
      if (direction) {
        backlightStatus = 1;
        analogWrite(10, x);
      }
      else {
        backlightStatus = 0;
        analogWrite(10, 258 - x);
      }
    }
  }

}

void printTemp() {
  bigNum.print(temperature, 2, 11, ' ');
}

void updateDHT() {
  temperatureArray[tempIndex] = dht.readTemperature(true);
  tempIndex++;
  if (tempIndex > 9) {
    tempIndex = 0;
  }
  temperature = (averageArray(temperatureArray, 10));
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
    lcd.print("Ver. 0.8 ");
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
      if (mode == 0) {
        lcd.print("OFF");
      }
      else if (mode == COOLING) {
        lcd.print("C");
        lcd.print(setpoint);
      }
      else if (mode == HEATING) {
        lcd.print("H");
        lcd.print(setpoint);
      }
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
    case 4:
      lcd.print(FTOut: );
      switch (timeout) {
        case 0:
          lcd.print("30 M  ");
          break;
        case 1:
          lcd.print("1 H   ");
          break;
        case 2:
          lcd.print("2 H   ");
          break;
      }
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
          circFanOldMillis = millis();
        }
        digitalWrite(FAN, circFanInterval);
        break;
      }
  }


}

int averageArray(float inputArray[], int arraySize) {
  float sum = 0;
  float average = 0;
  for (int i = 0; i < arraySize; i++) {
    sum += inputArray[i];
  }
  average = sum / arraySize;
  return average;
}

void handleButtonEvent(AceButton* button, uint8_t eventType, uint8_t buttonState) {

  LCDTimeoutOldMillis = millis();
  thermostatControlOldMillis = millis();

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
