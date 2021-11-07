# Arduino-Thermostat

This is a project to create a arduino powered home thermostat. Currently the project is in the electrical design stage. Version 1 PCB schematic and design is complete.

# Electrical Design

![Schematic](pics/Schematic.png)

![Board](pics/Board.png)

The entire project was designed to be through hole for ease of assembly and troubleshooting. Perhaps in the future, a SMD version with a smaller footprint can be made once the electrical design is finalized.

## Power Section

This takes the 24v AC from the air handler transformer and rectifies it to create a higher voltage DC bus. This is then smoothed and an LM2596 is used as a switching regulator to create a 5.0v supply.

Power for the arduino is supplied via the 5v pin from the onboard voltage regulator.

The regulator can handle upto 3a of current and would be accurately described as "way overkill" for the power requirements of the low voltage section of this board. Once V1 is confirmed to be working, a redesign will be carried out that will allow a lower BOM cost and a physical design shrink.

Because the circuitry in the air handler requires the relays to be switched on with the supplied 24v AC, it is routed down the board to supply the common terminal of the three main relays.

## Relay Driver

A L293D Bipolar Motor Driver was chosen because it was readily available in DIP format, worked for the voltages required, had logic level inputs and had built in flyback diodes that allowed for less physical space usage at the expense of a higher BOM cost.

Additionally, due to the extra available output, the supply for the LCD backlight is switched with output 4.

## Inputs and Outputs

An arduino nano will be used to run the thermostat, ample GPIO meant that each physical button could have it's own DIO pin. Additionally, the LCD was able to be run directly in 4 bit parallel mode allowing for lower BOM cost and simpler electrical design.

The DHT11 may be swapped out with a DHT22 as they have the same footprint and the DHT 22 has a wider range of measurement.

## Physical Outline

The physical outline of the board was designed to mimic my current thermostat. 4 mounting holes were provided to allow for either wall mounting or a case.

