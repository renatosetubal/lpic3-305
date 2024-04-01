#!/bin/bash
apt update -y
apt install -y xen-system-amd64 xen-tools
echo 'GRUB_CMDLINE_XEN_DEFAULT="dom0_max_vcpus=1 dom0_mem=1014M,max:1024M"' >> /etc/default/grub
update-grub
reboot
