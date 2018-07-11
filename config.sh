#!/bin/bash

sudo apt-get update
sudo apt-get install -y zip wget at streamripper python-dev
sudo systemctl enable atd.service
sudo cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

su - admin -c "pip install awscli --upgrade --user"
sudo rm /usr/local/bin/aws
sudo ln -fs /home/admin/.local/bin/aws /usr/local/bin/aws

wget https://raw.githubusercontent.com/thiagohersan/radio-recorder/master/record.sh
chmod 700 record.sh
chown admin:admin record.sh
sudo mv record.sh /home/admin

su - admin -c "at 10:50 071418 -f ~/record.sh"
su - admin -c "at 11:50 071518 -f ~/record.sh"
