# COPY THESE FILES IN /HOME/PI/KLIPPER/SCRIPT/


## Copy the content of folder /LOG_CPU/etc_systemd_system/ in your /etc/systemd/system
then with putty:

sudo systemctl daemon-reload 

sudo systemctl enable log_cpu.timer

sudo systemctl start log_cpu.timer
