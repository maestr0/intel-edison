#!/bin/sh
say() { 
espeak "$*" -w tmp.wav & mplayer tmp.wav
}
say $*
