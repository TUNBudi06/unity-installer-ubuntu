#!/bin/sh
apt update
apt upgrade -y
apt install udisk2 -y
apt install ubuntu-unity-desktop tigervnc-standalone-server -y

echo "tigervncserver $@" >/usr/bin/vncserver

apt install gnome-icon-theme
apt install tigervnc-xorg-extension
apt install mesa-utils-*
apt install x11-*
