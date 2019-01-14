# Card switcher

In some cases physical switching of a smart card is required to operate / test a system, this project can change between multiple smart cards electronically.

The device can be managed via a USB interface (Serial bus over USB).

_The project is inspired by [Smart Card removinator project](https://github.com/nkinder/smart-card-removinator)._

# Hardware

The device is made up from 3 different components: card shield, card controller, card adapter

## Card shield

One device installation can use multiple card shields, one card shield can take one card. The maximum number of stackable card shields are 15 (or 16, but w/o a unselected option). These shields are vertically stacked pcb modules.

Every shield have a 4 bit address, which can be changed by a dip switch on the board (the space between the stacked modules are enough to change the address after it stacked with a tweezer). The controller can detect address collisions via a feedback resistor.

Card shields can't detect if they have an inserted card or not.

### Card shield schematics

![Card shield schematics](/images/card_shield_diagram.png)

### Card shield PCB

![Card shield PBC](/images/card_shield.png)

### Card shield photos

![Card shield photo](/photos/card_shield_01.jpg)

## Card controller

One device installation needs one controller. The controller will the base of the card shields.

The card controller can be controller (and powered) via mini USB. It connects to the card adapter with a ethernet cable (but not ethernet protocol of course).

It has an IC socket, initially designed to hold an ATMEGA168PA, with an Arduino software. The board also has a ISP connector to program the MCU.

### Card controller schematics

![Card controller schematics](/images/card_ctrl_diagram.png)

### Card controller PCB

![Card controller PCB](/images/card_ctrl_pcb.png)

### Card controller photos

![Card controller photo](/photos/card_controller_01.jpg)
![Card controller photo](/photos/card_controller_02.jpg)

## Card adapter

The card adapter is the _fake_ card, that goes into the real card slot.

### Card adapter PCB

![Card adapter](/images/card_adapter_pcb.png)

### Card adapter photos

![Card adapter photo](/photos/card_adapter_01.jpg)
![Card adapter photo](/photos/card_adapter_02.jpg)

# Software

Software is in the mcu-software folder as an Arduino project. It can be uploaded via the USB interface or via the ISP. For the development the MiniCore Arduino board library used for the ATMega168IC (16 Mhz external clock; 168P / 168PA variant).

The software is checking the available card shield addresses upon boot and refuse to start (reboot loop with fast blinking of the activity LED) if an address collision is detected.
After the boot, it can be controlled via serial (via USB), by writing the addresses in ASCII (no newline required).

# Photos

_Installation with two card shield modules and cards_

![System with 2 cards](/photos/system_01.jpg)
![System with 2 cards](/photos/system_02.jpg)
![System with 2 cards](/photos/system_03.jpg)

## Example terminal communication

```
Serial init
Device found on address: 1
Device found on address: 2
Ready to use!
Address? >>
Set to address (no active device): 4
Address? >>
Set to address (active device): 1
Address? >>
Set to address (active device): 2
Address? >>
```

# Components

The EAGLE files are containing the required components numbers (extra component libraries also included).

Special (non common / passive) components are:
- card shield: 2x SN74HC4066DR Quadruple Bilateral Analog Switch
- card shield: 1x CD74HC85M CMOS Logic 4-Bit Magnitude Comparator
- card shield: 1x C702 10M008 230 40 Amphenol Tuchel Smard card connector (Mouser)
- card controller: 1x FT232BL FTDI IC
- card controller: 1x ATMEGA168PA MCU

Every other component can be found in bom folder, or can be exported from EAGLE files.

# Isolation

The device using a common fused (500 mA) ground between the USB and the smart card adapter (Smart card connector GND). 

If complete isolation is required then an USB isolator (eg. Adafruit USB Isolator) can be used. The device should draw under 80 mA.


