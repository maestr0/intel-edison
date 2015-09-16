#!/bin/sh
say() { 
	echo "$*" | espeak -s120 -k18 -a200 -v en-scottish -w tmp.wav
#sleep 1  
mplayer -ao pulse tmp.wav > /dev/null
rm -fr tmp.wav
}
say $*

