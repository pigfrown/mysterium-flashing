#!/usr/bin/env bash

# https://github.com/qmk/qmk_firmware/blob/master/docs/flashing.md
#
# -p is the partNumber of the chip on board.
# We can view all with `avrdude -vp ?`
# This is the ATMEGA32A.. -p

# Before we can run this we need to be in bootloader mode..
# HOLD BOOT, TAP RESET, RELEASE BOOT
# Check with lsusb that we can see the bootloader

avrdude -p m32a -c usbasp -U flash:w:coseyfannitutti_mysterium_via.hex:i

# Now press reset
#
# Upon power on and off the keyboard should be working
