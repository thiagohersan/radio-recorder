#!/bin/bash

sudo apt-get update
sudo apt-get install -y zip wget at streamripper
sudo systemctl enable atd.service
sudo cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

wget https://raw.githubusercontent.com/thiagohersan/radio-recorder/master/record.sh
wget https://raw.githubusercontent.com/thiagohersan/radio-recorder/master/run.sh
chmod 700 record.sh run.sh
chown admin:admin record.sh
chown admin:admin run.sh
sudo mv r*.sh /home/admin

su - admin -c "at 10:50 071418 -f /home/admin/run.sh"
su - admin -c "at 11:50 071518 -f /home/admin/run.sh"
