#!/bin/bash
# A Simple Mounting Script

#Prompts user for the name of the device to be unmounted
echo -e "Please enter the Device Name"
read varName
sudo umount /media/usb/$varName

sudo rmdir /media/usb/$varName

echo "$varName unmounted."


