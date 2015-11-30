#!/bin/sh
gst-launch-1.0 filesrc location=$2 ! wavparse ! volume volume=0.$1 ! pulsesink
