#!/bin/sh
say() { 
	echo "$*" | espeak -s120 -k18 -a200 -v en-westindies -w tmp.wav
#sleep 1  
mplayer -volume 60 -ao pulse tmp.wav > /dev/null
rm -fr tmp.wav
}
say $*
