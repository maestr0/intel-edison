#!/bin/sh

mkdir ~/scripts
cp *.sh ~/scripts
cp base-feeds.conf /etc/opkg/base-feeds.conf

opkg update

opkg install git
opkg install vim
