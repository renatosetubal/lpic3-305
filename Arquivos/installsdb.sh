#!/bin/bash
#Script para formatar e montar um segundo hd na VM
#É necessário existir este segundo hd, caso contrário apresetará erro

apt update -y
apt install xfsprogs -y
mkfs.xfs /dev/sdb
mkdir /mnt/sdb -p
mount /dev/sdb /mnt/sdb
echo "/dev/sdb /mnt/sdb xfs defaults 0 0" >> /etc/fstab
systemctl daemon-reload
mount -a