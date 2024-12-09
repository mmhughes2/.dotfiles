#!/bin/bash
# Check if the OS is linux
if [ "$(uname)" != "Linux" ]; then
	echo "Error: Script is designed for Linux only." >> linuxsetup.log
	exit 1
fi


# Create the .TRASH directory if not exists
mkdir -p ~/.TRASH

#Backup existing .nanorc file
if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "Existing .nanorc file backed up as .bup_nanorc" >> linuxsetup.log
fi


#Overwrite .nanorc
cp etc/nanorc ~/.nanorc

#Add custom bashrc source line
echo "Source ~/.dotfiles/etc/bashrch_custom" >> ~/.bashrc



# Add
