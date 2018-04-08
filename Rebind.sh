#! /bin/bash

ENABLE="enable"
DISABLE="disable" 

echo -e "Do you want to enable or disable the write blocker?"
read varName

echo -e "What is your device number?"
read devNum

if [ "$varName" == "$ENABLE" ];
then
cd /sys/bus/usb/drivers/usb-storage/
sudo bash -c "echo $devNum >> unbind"

cd /sys/bus/usb/drivers/usb-storage-blocker/
sudo bash -c "echo $devNum >> bind"
fi

if [ "$varName" == "$DISABLE" ]
then
cd /sys/bus/usb/drivers/usb-storage-blocker/
sudo bash -c "echo $devNum >> unbind"

cd /sys/bus/usb/drivers/usb-storage/
sudo bash -c "echo $devNum >> bind"
fi

