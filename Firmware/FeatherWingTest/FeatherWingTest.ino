/***************************************************
  Adafruit invests time and resources providing this open source code,
  please support Adafruit and open-source hardware by purchasing
  products from Adafruit!

  Written by Limor Fried/Ladyada for Adafruit Industries.
  MIT license, all text above must be included in any redistribution
 ****************************************************/


#include <GxEPD2_BW.h>


GxEPD2_BW<GxEPD2_290_I6FD, GxEPD2_290_I6FD::HEIGHT> display(GxEPD2_290_I6FD(/*CS=D8*/ 0, /*DC=D3*/ 15, /*RST=D4*/ -1, /*BUSY=D2*/ -1)); // GDEW029I6FD



#define COLOR1 EPD_BLACK
#define COLOR2 EPD_RED

void setup() {
  display.setTextWrap(false);
  display.setRotation(3);
  display.init(115200);

  display.drawFastVLine(215,0,128,1);
  display.drawFastHLine(215,43,80,1);
  display.drawFastHLine(215,85,80,1);
  display.drawFastHLine(0,11,216,1);
  display.drawFastHLine(0,50,216,1);
  display.drawFastHLine(0,89,216,1);
  display.setFullWindow();
  display.display();

  delay(2000);

  
  display.setTextColor(1);
  display.setTextSize(1);
  display.setCursor(219, 2);
  display.print("Setpoint");
  display.setCursor(219, 46);
  display.print("Actual");
  display.setCursor(219, 88);
  display.print("Humidity");

  
  display.setTextSize(3);
  display.setCursor(219, 15);
  display.print("75.4");
  display.setCursor(219, 59);
  display.print("75.5");
  display.setCursor(231, 101);
  display.print("75%");

  
  display.setTextSize(1);
  display.setCursor(2, 2);
  display.print("Time: 10:07 Saturday, March 7 2022");
  display.display(1);
  delay(5000);

}

void loop() {
  //don't do anything!
}


void testdrawtext(const char *text, uint16_t color) {
  display.setCursor(0, 0);
  display.setTextColor(color);
  display.setTextWrap(true);
  display.print(text);
}
