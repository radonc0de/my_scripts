#!/bin/bash
sudo mount -t cifs //172.168.0.140/unraidable-fast /mnt/share -o username=takumi,uid=$(id -u),gid=$(id -g)
