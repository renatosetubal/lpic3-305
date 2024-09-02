#!/bin/bash
apt update;
apt upgrade -y
apt install xen-system-amd64 xen-tools bridge-utils net-tools zstd tmux -y
