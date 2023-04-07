## ALERT! Read carefully the commented code
This is the backup of my modded Sapphire Plus V1
with Diamond Mount + vz-Hextrudort-low + Moon's Motor, Optical Endstops on X Y 2xZ, 
on Robin Nano v1.2 the TMC2209x5 in UART are in this order: X Y E Z1 Z2;
the endstops pins on the board are for Z Endstops and BLTouch,
and other mods are written in the code, like RP2040 for input shaping, webcam etc etc...

# WIKI - Klipper for TwoTrees Sapphire Plus SP5

https://github.com/Travis90x/TwoTrees-Sapphire-Plus-SP5/wiki/Klipper

# Klipper ADXL345 with RP4020 Zero or Robin Nano

Copy scripts in your ~/klipper/scripts/ folder  (ex. /home/pi/klipper/scripts/).

generate-belt-tension-graph.sh

generate-shaper-graph-x.sh

generate-shaper-graph-y.sh 

or take them from https://github.com/Rat-OS/RatOS-configuration/blob/master/scripts/

Copy .cfg files in your /home/pi/klipper_config/

### printer.cfg
Edit your printer.cfg and add

[include ADXL345.cfg]

[include shell_command.cfg]

### printer.cfg by Giuseppe Di Resta
https://github.com/pappicio/klipper_config

### ADXL345.cfg
is needed for ADXL345 with RP4020 (a clone of Raspberry Pi Pico)
as a secondary MCU (usb connected, ex. to Android TV Box with Armbian)
or for ADXL345 connected to Robin Nano v1.2 SDcard pins
is needed for TEST_RESONANCES AXIS  and calibrate  input_shaper

Important: with ACCELEROMETER_QUERY and similar, only on the first time you will got an error, so retry the test.

### Shell_command.cfg
It is needed for consulting png result resonance.
In one click, it generates resutls of the last tests with ADXL345, ignoring old tests, but move all the files in a folder that you can see directly in Klipper (Mainsail).

![Macro](https://dub01pap001files.storage.live.com/y4me3X9sHo0mlxEPl14J44P0kUcC9DutL3y4LBRyJYCaCwRD00IB1aLeXp1I73yg-vymvh9_WSyMV2jhT8UUz2gXLod1gejmHUPvg4TBsDVluEyL-Os4_4RZgJLtRIl8uwEnCDGO5upZpTI9LIc72pZx468lNts_QtMfPML8cIZgTz8rHgyRXyxV-svl3gNb4HG?width=1642&height=955&cropmode=none)


##  ADXL345 with  Robin Nano
![ADXL345_Robin_Nano](https://dub01pap001files.storage.live.com/y4me5RW18GIwK_fcUlf7w3nj4w6YMyhTDQUd6DP1olaTgDhr4POYXx636IYYhGHbak8CHpBY5_Dn_FWNWXboiyP17WVmhjfsN_AX_O1amrQrQMvW7O_NV1VgcRobJkIY-zDPruqq5zr07cvk5YB6Xz6V0cT93ciUPWYEXY3Ms8zbQKO7gTfXNDRqOA_E7hh5vAE?width=1031&height=708&cropmode=none)


###  Scheme by Giuseppe di Resta - klippertv.altervista.org
![ADXL345_Robin_Nano](https://dub01pap001files.storage.live.com/y4m7IK1BJNt1vKKy8NUyUgY2JDpA7482tIFzu7aFM2l6qReDuUjdhjDP-nApw9XFoc9ub_OlT-Epp4Sf9oqNyEabtPqdv2lteD3IFX947QojT8bwA-xvfb2iBzdVtwOfSdwvqWQZjpb6Ur5XaDAjLe93wcdcejz8Mz-PI_eILencPtmI5IO7DWBWK59edyt5C5Q?width=1280&height=895&cropmode=none)

###  ADXL345 pinout
![ADXL345_pinout](https://dub01pap001files.storage.live.com/y4mKxhwHVDSZLjzOQcg5WlnUhuhdurpEAQ6HTXmlfnY9xxaveY89mcY_HXsd2Bqhqn3jMvKN4GiZ0mJW8cHS5uFaO0H3vk9vf4c9uaF_c7d-NQMQF5Qy3ZCw_0cMAI8Kscw01p4HFWRZJnKZ0gYU2VPkLoKZ2yTHXEZfI8lfd5Yzn0GwikAys0azAwTvgvKQgVk?width=1280&height=687&cropmode=none)

###  ADXL345 RP4020
![ADXL345_RP4020](https://dub01pap001files.storage.live.com/y4mbyKgSxpsTJOKh0bNi1_yDFcTyLpyhM2GWWuWQriXEeu4FaKGBUOKrUtDFcNDLtxx3LlkDI2l4MIKxq8miDGla-wMsuOAyZLqq6OLsj2CnK9LhogGMkH0L0SL7lFVwZ2J9I-f4mmpnukfnQUOvUu7P23GJIauCJwKRNR9_lA-kGr8lXM8HSJRnfvdTL-6s1mX?width=599&height=660&cropmode=none)

