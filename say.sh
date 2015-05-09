#!/bin/sh
say() { 
espeak "$*" -w tmp.wav & mplayer -ao pulse tmp.wav > /dev/null
}
say $*

rm tmp.wav
