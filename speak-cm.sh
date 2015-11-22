#!/bin/bash                                                                  
volume=$(($1 - 1))

say() {                                                                                                                                                                                                                                                    
	echo "$2" | espeak -s120 -k18 -a200 -v en-westindies -w tmp.wav                                                                                                                                                                                    
	gst-launch-1.0 filesrc location=tmp.wav ! wavparse ! volume volume=0.${volume} ! pulsesink                                                                                                                                                                        
	rm -fr tmp.wav                                                                                                                                                                                                                                             
}                                                                                                                                                                                                                                                          
say "$@" 
