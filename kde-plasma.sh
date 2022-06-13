apt update
apt upgrade -y

apt-get install kubuntu-desktop tigervnc-standalone-server dbus-x11

echo "vncserver -geometry 1600x720 -xstartup /bin/startplasma-x11" >/usr/local/bin/vncstart
chmod +x /usr/local/bin/vncstart

echo -e "rm -rf /tmp \n mkdir /tmp \n vncserver -kill :1 " >/usr/local/bin/vncstop
chmod +x /usr/local/bin/vncstop
