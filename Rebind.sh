#! /bin/bash

ENABLE="enable"
DISABLE="disable" 

#Prompts user to enter either "enable" or "disable"
echo -e "Do you want to enable or disable the write blocker?"
read varName
#Asks user to identify the device number assigned
echo -e "What is your device number?"
read devNum

#Enable logic
if [ "$varName" == "$ENABLE" ];
then
cd /sys/bus/usb/drivers/usb-storage/
sudo bash -c "echo $devNum >> unbind"

cd /sys/bus/usb/drivers/usb-storage-blocker/
sudo bash -c "echo $devNum >> bind"
fi

#Disable logic
if [ "$varName" == "$DISABLE" ]
then
cd /sys/bus/usb/drivers/usb-storage-blocker/
sudo bash -c "echo $devNum >> unbind"

cd /sys/bus/usb/drivers/usb-storage/
sudo bash -c "echo $devNum >> bind"
fi

