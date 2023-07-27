# COPY THESE FILES IN /HOME/PI/KLIPPER/SCRIPT/


## Copy the content of folder /LOG_CPU/etc_systemd_system/ in your /etc/systemd/system
then with putty:

#### sudo systemctl daemon-reload 

#### sudo systemctl enable log_cpu.timer

#### sudo systemctl start log_cpu.timer


#  USB automount and copy USB-KEY/gcodes in /home/pi/printer_data/gcodes

#### Copy the scripts in in /home/pi/printer_data/config/scripts


#### USB_KEY.sh
(This show all USB device connected, es: /dev/sda1 /dev/sda2 /dev/sdb1 etc..)
#### USB_MOUNT.sh
(This mount without superuser "sudo mount" all /dev/sdXY to /media/pi/XXX)
#### USB_COPY.sh
(This copy all file in /media/pi/XXX/gcodes in /home/pi/printer_data/gcodes)

## execute in putty
#### sudo chmod +x /home/pi/printer_data/config/scripts/USB_KEY.sh
#### sudo chmod +x /home/pi/printer_data/config/scripts/USB_MOUNT.sh
#### sudo chmod +x /home/pi/printer_data/config/scripts/USB_COPY.sh
#### sudo apt install udisks2


### add in printer.cfg add the macros below
(or in printer.cfg add [include shell_command.cfg] and in shell_command.cfg add the macros below)

### the macros are in https://github.com/Travis90x/TwoTrees-Sapphire-Plus-SP5-Klipper/blob/main/shell_command.cfg

#### [gcode_macro USB_KEY]
#### [gcode_shell_command USB_KEY]
#### [gcode_macro USB_MOUNT]
#### [gcode_shell_command USB_MOUNT]
#### [gcode_macro USB_UNMOUNT]
#### [gcode_shell_command USB_UNMOUNT]
#### [gcode_macro USB_COPY_GCODES]
#### [gcode_shell_command USB_COPY_GCODES]
