#!/bin/bash
clear 
sudo apt install figlet && sudo apt install lshw
clear
echo -e "\e[32m$(figlet -c 'System information')\e[0m" && echo  "                                       
echo "Wellcome To System information .Here is your device information ."
hostnamectl
echo "Networking information"
ip =$(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "IP address :$ip"
mac=$(ip link show | awk '/ether/ {print $2}')
echo "mac address:$mac"

echo "information  about Memory"
free -h
echo "Information about storage device"
df -h
echo "Information about connected devices"
lsblk





echo -e "\e[32mDetail Information about ,CPU,Memory and components of hardware are saved in the current directory\e[0m"



lshw -short  > hardware.txt
lscpu > cpuinfo.txt
sudo dmidecode --type memory >memoryinfo.txt
ls


