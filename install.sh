#!/bin/sh

mkdir -p /home/pi/Scripts
chmod 755 ./pwm_fan_ctrl.py
cp ./pwm_fan_ctrl.py /home/pi/Scripts/
cp ./pwmfanctrl.service /etc/systemd/system/
systemctl enable pwmfanctrl.service
systemctl start pwmfanctrl.service
