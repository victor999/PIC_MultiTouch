PIC MultiTouch
==============

Adaptation of the original project to 11.6 inch LCD with touch panel.

USB Device firmware to use a capacitive multi-touch panel with a PIC18F14K50

Chip in the touch panel is FT5x26

The PIC microcontroller will talk to the touch panel controller over I2C, then communicate with a PC over high-speed USB.

The touch panel firmware is a modification of Microchip's multi-touch digitizer demo code.

The touch panel is configured to send interrupt signals to the PIC microcontroller, and the PIC responds by sending HID data packets through USB. The PIC should be connected to a 12 MHz crystal, and the PIC has an internal 4x PLL, bringing the system clock up to 48MHz, the required speed for USB 2.0 operation.
