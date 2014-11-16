#!/bin/bash

#
# Basics
#

echo "--> Installing basics"
apt-get update
apt-get install -y vim git tree curl


#
# Adding a pair user
#

echo "--> Add Pair user"
useradd pair -s /bin/bash -m -U
chpasswd << 'END'
pair:pair
END


#
# Setting up multiuser screen
#

echo "--> Set up screen"
apt-get install screen
chmod u+s /usr/bin/screen
chmod -R 755 /var/run/screen
echo "multiuser on" >> /home/vagrant/.screenrc
echo "acladd pair" >> /home/vagrant/.screenrc
