#! /bin/bash

#Asks for the mount location
echo -e "Where is the device mounted?"
read dirName

#Asks to specify if this is "pre" or "post" blocking operations
echo -e "Is this pre or post block?"
read varName

sudo touch $varName.md5
sudo touch $varName.sha1

#Outputs the md5sums to file $varName.md5 and prints it to the screen
{
sudo bash -c "tar -cf - $dirName | md5sum >> $varName.md5"
} &> /dev/null
echo -e "MD5: "
cat $varName.md5

#Outputs the sha1sums to file $varName.sha1 and prints it to the screen
{
sudo bash -c "tar -cf - $dirName/ | sha1sum >> $varName.sha1"
} &> /dev/null
echo -e "SHA-1: "
cat $varName.sha1
