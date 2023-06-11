#!/bin/bash 
MaxFileSize=204800
DaysToKeep=3
echo -e "\n Fecha:"`date` >> /home/pi/printer_data/config/scripts/logs/CPU.txt
echo -e "\n Uptime: "`uptime` >> /home/pi/printer_data/config/scripts/logs/CPU.txt
ps -e -o pcpu,pmem,args --sort=pcpu | tail >> /home/pi/printer_data/config/scripts/logs/CPU.txt
#Get size in bytes** 
file_size=`du -b /home/pi/printer_data/config/scripts/CPU.txt | tr -s '\t' ' ' | cut -d' ' -f1`
if [ $file_size -gt $MaxFileSize ];then   
    timestamp=`date +%s`
    mv /home/pi/printer_data/config/scripts/logs/CPU.txt /home/pi/printer_data/config/scripts/logs/CPU.txt.$timestamp
    gzip /home/pi/printer_data/config/scripts/logs/CPU.txt.$timestamp
    touch /home/pi/printer_data/config/scripts/logs/CPU.txt
    # remove old files
    find /home/pi/printer_data/config/scripts/logs -name "CPU.txt.*" -type f -mtime +$DaysToKeep -delete 
fi
