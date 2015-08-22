#!/bin/sh

cp base-feeds.conf /etc/opkg/base-feeds.conf

opkg update

opkg install git
opkg install espeak

git config --global push.default simple
git config --global user.email "raszewski@gmail.com"
git config --global user.name "Pawel Raszewski"
