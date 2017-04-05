#!/bin/sh

SCREENDIR="/home/enrico/Bilder/Screenshots"
SCREENFILE="$(date +%s).png"

if [ $1 == "full" ];
then
		maim $SCREENDIR/$SCREENFILE
fi

if [ $1 == "current" ];
then
		maim -i$(xdotool getactivewindow) ~/$SCREENDIR/$SCREENFILE
fi
