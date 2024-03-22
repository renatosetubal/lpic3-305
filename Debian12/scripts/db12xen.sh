#!/bin/bash
apt-get update -y
mkfs.xfs /dev/sdb
mkdir /mnt/sdb -p
mount /dev/sdb /mnt/sdb
echo "/dev/sdb /mnt/sdb xfs defaults 0 0" >> /etc/fstab
systemctl daemon-reload
mount -a