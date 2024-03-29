#!/bin/bash
apt install xen-system-amd64 xen-tools -y
cp /etc/default/{grub,grub.bak}
echo 'GRUB_CMDLINE_XEN_DEFAULT="dom0_max_vcpus=1 dom0_mem=1014M,max:1024M"' >> /etc/default/grub
update-grub
reboot
