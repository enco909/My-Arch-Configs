#!/bin/bash

yaourt -Syua
	
echo " ";
echo "Do you want to update the Kernel? [Y/N + ENTER]: "

read kernelU

if (( ($kernelU == "Y") || ($kernelU == "y") )); then

		sudo mkinitcpio -p linux
fi

pkill -RTMIN+3 i3blocks
