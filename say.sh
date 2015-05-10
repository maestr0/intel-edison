#!/bin/sh
say() { 
	echo "$*" | espeak -v en-westindies -k20 -w tmp.wav
#sleep 1  
mplayer -ao pulse tmp.wav > /dev/null
rm -am tmp.wav
}
say $*

