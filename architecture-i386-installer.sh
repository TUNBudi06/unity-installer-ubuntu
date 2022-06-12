apt update 
apt upgrade -y

dpkg --add-architecture i386

# replace 'deb' with 'deb [arch=armhf]'
sed 's/^deb http/deb [arch=armhf] http/' -i '/etc/apt/sources.list'
cat > /etc/apt/sources.list.d/i386.list <<- debian #dengan server mirror x86:

deb [arch=i386] http://security.ubuntu.com/ubuntu/ focal-security  main restricted universe multiverse
deb [arch=i386]  http://archive.ubuntu.com/ubuntu/ focal           main restricted universe multiverse
deb [arch=i386]  http://archive.ubuntu.com/ubuntu/ focal-updates   main restricted universe multiverse
deb [arch=i386]  http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse

debian

apt-get update
