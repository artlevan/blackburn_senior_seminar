#!/bin/bash
# A Simple Mounting Script

#Prompts user to enter a device name
echo -e "Please enter a Device Name"
read varName
sudo mkdir /media/usb/$varName

#Prompts user to specify the partition name of the device
echo -e "Please enter the partition name (i.e. /dev/sdb1)"
read devName
sudo mount -r $devName /media/usb/$varName

echo "Mounted $devName at /media/usb/$varName"
