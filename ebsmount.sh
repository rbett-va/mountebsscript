#!/bin/bash
#This script will mount the ebs volume to ec2 instance

echo "step1:creating a mount point at /mnt"

read -p " enter directory name for mount point" dir

sudo mkdir / mnt / $dir

lsblk

sleep 4

echo "step2:format the block"

sudo mkfs -t ext4 / dev / xydf

echo "step3: "mount the block to the mount point"

sudo mount/ dev/ xydf / mnt / $dir

df -h

lsblk

echo " / dev / xydf / mnt / $dir ext4 defaultr 0 1" | sudo tee -a /etc/fstab