#! /bin/bash
echo -e "Is this pre or post block?"
read varName

sudo touch $varName.md5
sudo touch $varName.sha1

#Outputs the md5sums to file $varName.md5 and prints it to the screen
{
sudo bash -c "tar -cf - /media/pi/C874-30B5/ | md5sum >> $varName.md5"
} &> /dev/null
echo -e "MD5: "
cat $varName.md5

#Outputs the sha1sums to file $varName.sha1 and prints it to the screen
{
sudo bash -c "tar -cf - /media/pi/C874-30B5/ | sha1sum >> $varName.sha1"
} &> /dev/null
echo -e "SHA-1: "
cat $varName.sha1
