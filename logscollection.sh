#!/bin/bash

#This script is used to collect logs and copy to another server

read -p "Please enter a filename: " filename

read -p "Please enter IP Address: " ip

constring="ubuntu@$ip:/tmp"

cat /var/log/kern.log > $filename

echo "We are team" >> $filename

echo "Group members are; "  >> $filename

echo "emails"  >> $filename

sudo chmod +x $filename

scp -i key $filename $constring

echo "please make sure you watch the /tmp of the remote server"
