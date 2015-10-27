#!/bin/sh

/usr/sbin/rfkill unblock bluetooth
/usr/bin/hciconfig hci0 up
/usr/bin/hciconfig hci0 piscan
systemctl start obex

sleep 2
echo -e "connect 5A:5A:5A:A6:3B:C7\nquit\n" | bluetoothctl
sleep 2
pactl set-default-sink bluez_sink.5A_5A_5A_A6_3B_C7
# hack for wifi
ifconfig wlan0 up
