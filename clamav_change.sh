#!/bin/bash

systemctl stop clamav-freshclam
rm -rf /var/lib/clamav/*
wget http://unlix.ru/clamav/main.cvd -O /var/lib/clamav/main.cvd 
wget http://unlix.ru/clamav/daily.cvd -O /var/lib/clamav/daily.cvd 
wget http://unlix.ru/clamav/bytecode.cvd -O /var/lib/clamav/bytecode.cvd 
systemctl start clamav-freshclam
