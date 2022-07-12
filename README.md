# Arduino-Thermostat

This is a project to create a Arduino (or Arduino compatible) powered home thermostat. Version 2 PCB schematic and design is complete.

# Electrical Design

![Schematic](pics/Schematic.png)

![Board](pics/Board.png)

Version 2 has been updated and upgraded to use many SMD components. The board has shrunk, extra protections added and lots of the lessons learned from V1 were implemented as changes to V2.

## Power Section

This takes the 24v AC from the air handler transformer and rectifies it to create a high voltage DC bus. This is then smoothed and an LM2596 is used as a switching regulator to create a 3.3v supply.

Power for the feather is supplied via the 3.3v pin from the onboard voltage regulator.

The regulator can handle up to 3a of current and would be accurately described as "way overkill" for the power requirements of the low voltage section of this board. However, the LM2596 regulators are so simple and easy to effectively use (thanks TI!) that it was worth the extra cost to just have something "easy."

Because the circuitry in the air handler requires the relays to be switched on with the supplied 24v AC, it is routed down the board to supply the common terminal of the three main relays.

## Relay Drive Section

In order to drive the relays, small logic level MOSFETS are utilized with the feather board outputs acting as gate drivers for the three MOSFETs. The current requirements for the selected relays are very low and can easily be sunk by the selected MOSFETs.

## Inputs and Outputs

An Adafruit Feather HUZZAH ESP8266 will be used to run the thermostat. This was selected because it was cheap, easy to work with and included a WiFi stack (allowing for some internet connected thermostat features in the future). One limitation of the ESP8266 is the extremely limited IO compared to the Arduino Nano of the V1 design. This lead to lots of design challanges, including the use of the onboard ADC for ladder buttons to save IO.

The central feature of the V2 design is the inclusion of a 2.9 inch e-ink display instead of a standard LCD. This high resolution, low power display will be ideal for a thermostat as the display needs minimal updates during normal usage.

## Physical Outline

The physical outline of the board was designed to mimic my current thermostat. No mounting holes are included in the V2 design due to the success of the board edge mount that was used on the V1 design.

## Lessons Learned for V2

- ~~Arduino placement needs to be revised. Currently plugging in the USB cable is impossible without bending a cable and potentially damaging the Arduino. This is the biggest mistake.~~ **fixed on V2 design. USB connector points toward the board edge and is easy to access**
- ~~Screw terminal placement needs to be revised. Currently with the massive spacing, it required me to trim a lot of the insulation off of the 5 conductor cable in order to spread the wires out far enough to reach.~~ **fixed on V2 design. Screw terminals were moved much closer together and should make wiring the thermostat much easier**
- ~~More markings on the front of the PCB to show which screw terminal does what. Currently it requires me to open the schematic and board files to correctly wire the thermostat.~~ **fixed on V2 design. Board markings on the silkscreen should make wiring the thermostat much easier.**
- ~~More work should be done to minimize footprint. Currently, the thermostat is physically very large.~~ **fixed on V2 design. Board outline has shrunk to around 60% of the original size.**
- ~~A larger screen would be nice to fit more information. A dot matrix or OLED would be best.~~ **fixed on V2 design. e-ink display selected as high resolution and low power display.**
- ~~Smaller regulator section and relays would go a long way to making the board shrink.~~ **unchanged on V2 design. However, the capacitors were revised with shorter, higher quality parts, the regulator was changed to a surface mount version and the diode and inductor were swapped with physically smaller versions.**

# Programming

No V2 programming has been written yet.

## Required Libraries

~~- AceButton
- LiquidCrystal
- BigNums2x2
- DHT~~

TBD once V2 programming is underway

## Planned Future Development

- PID control or other method for better temperature control.
- Humidistat control mode
- Adjustable circ fan frequency
- Better menu system
- Filtering on the temperature sensor to prevent rapid cycling
- Cycling time limit to prevent compressor damage

