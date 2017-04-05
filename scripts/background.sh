#!/bin/bash

DIR="/home/enrico/Bilder/Background/"
NUM=$(ls $DIR | wc -l)

while [ true ]; do

	for(( i = 1; i <= $NUM; i++))
	do

		feh --bg-fill $DIR/bg$i.jpg
		sleep 300

#		J="$i+1"

#		convert $DIR/bg$i.jpg -fill black -colorize 50% $DIR/transition.jpg
#		feh --bg-fill $DIR/transition.jpg

#		convert $DIR/bg$j.jpg -fill black -colorize 50% $DIR/transition.jpg
#		feh --bg-fill $DIR/transition.jpg

	done

done
