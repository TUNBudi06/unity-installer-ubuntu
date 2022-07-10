apt update
apt upgrade -y
apt install apt-utils -y
apt install dialog build-essential -y
apt install udisks2 -y
rm -rf /var/lib/dpkg/info/udisks2.postinst
dpkg --configure -a
apt install xubuntu-desktop -y
