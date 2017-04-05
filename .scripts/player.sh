#!/bin/bash

if (pgrep -x cmus > /dev/null); then

		if (cmus-remote -Q | grep "status stopped" > /dev/null && cmus-remote -Q | grep "set shuffle true" > /dev/null); then
				cmus-remote -C "format_print %A\ -\ %t\ \ ";

		elif (cmus-remote -Q | grep "status stopped" > /dev/null && cmus-remote -Q | grep "set shuffle false" > /dev/null); then
				cmus-remote -C "format_print %A\ -\ %t\ \  ";

		elif (cmus-remote -Q | grep "status paused" > /dev/null && cmus-remote -Q | grep "set shuffle true" > /dev/null); then
				cmus-remote -C "format_print %A\ -\ %t\ \ ";

		elif (cmus-remote -Q | grep "status paused" > /dev/null && cmus-remote -Q | grep "set shuffle false" > /dev/null); then
				cmus-remote -C "format_print %A\ -\ %t\ \ ";

		elif (cmus-remote -Q | grep "set shuffle true" > /dev/null); then
			cmus-remote -C "format_print %A\ -\ %t\ \ "
		
		else
			cmus-remote -C "format_print %A\ -\ %t\ \ "

	fi

else echo ""
fi
