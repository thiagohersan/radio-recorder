#!/bin/bash

sudo apt-get update
sudo apt-get install -y zip wget at streamripper
sudo systemctl enable atd.service
wget https://raw.githubusercontent.com/thiagohersan/radio-recorder/master/record.sh
chmod 700 record.sh
chown admin:admin record.sh
at 14:50 071118 -f ~/record.sh
at 10:50 071418 -f ~/record.sh
at 11:50 071518 -f ~/record.sh
