#!/bin/sh

rfkill unblock bluetooth
sleep 2
echo -e "connect 5A:5A:5A:A6:3B:C7\nquit\n" | bluetoothctl
pactl set-default-sink bluez_sink.5A_5A_5A_A6_3B_C7

