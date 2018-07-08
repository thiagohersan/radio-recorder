#!/bin/bash

apt-get update
apt-get install -y wget streamripper
wget https://raw.githubusercontent.com/thiagohersan/radio-recorder/master/record.sh
chmod 700 record.sh
chown admin:admin record.sh
