#!/bin/bash
# A Simple Mounting Script

echo -e "Please enter a Device Name"
read varName
sudo mkdir /media/usb/$varName

echo -e "Please enter the partition name (i.e. /dev/sdb1)"
read devName
sudo mount -ro $devName /media/usb/$varName

echo "Mounted $devName at /media/usb/$varName"
