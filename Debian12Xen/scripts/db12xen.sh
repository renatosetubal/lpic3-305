#!/bin/bash
apt-get update -y
apt install xen-system-amd64 xen-tools bridge-utils net-tools xfsprogs vim -y #Instalando as ferramentas do Xen
echo 'GRUB_CMDLINE_XEN_DEFAULT="dom0_max_vcpus=1 dom0_mem=1014M,max:1024M"' >> /etc/default/grub
update-grub2 #Definindo Xen como boot no grub (atualizacao)
mkfs.xfs /dev/sdb
mkdir /mnt/sdb -p
mount /dev/sdb /mnt/sdb
echo "/dev/sdb /mnt/sdb xfs defaults 0 0" >> /etc/fstab
systemctl daemon-reload
mount -a