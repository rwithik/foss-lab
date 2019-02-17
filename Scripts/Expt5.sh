#!/bin/bash

echo -e "OS Details: `uname -a`\n"
echo -e "Available Shells"
echo -e "----------------"
cat /etc/shells | grep -e "^/"
echo -e "\nCPU Info"
echo -e "--------"
lscpu | grep "Architecture\|Model name\|MHz"
echo -e "\nMemory Info"
echo -e "-----------"
free -mh
echo -e "\nHard Disk Info"
echo -e "--------------"
df
echo -e "\nMounted Filesystems"
echo -e "-------------------"
lsblk


