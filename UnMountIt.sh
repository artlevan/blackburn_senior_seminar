#!/bin/bash
# A Simple Mounting Script

echo -e "Please enter the Device Name"
read varName
sudo umount /media/usb/$varName

sudo rmdir /media/usb/$varName

echo "$varName unmounted."


