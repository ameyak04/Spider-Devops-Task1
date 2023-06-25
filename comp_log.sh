#!/bin/bash 
rm /tmp/comp_log.txt
sudo touch /tmp/comp_log.txt
echo -e "==============================\n">> /tmp/comp_log.txt
echo -e "        COMPUTER LOG\n">> /tmp/comp_log.txt
echo -e "==============================\n">> /tmp/comp_log.txt
echo -e "\nUptime:" >> /tmp/comp_log.txt
uptime >> /tmp/comp_log.txt
echo -e " \nDisk or Filesystem usage:" >> /tmp/comp_log.txt
df -m  >> /tmp/comp_log.txt
echo -e "\nMemory  usage:" >> /tmp/comp_log.txt
free -m   >> /tmp/comp_log.txt
echo -e "\nUtilization and most expensive process:" >> /tmp/comp_log.txt
top -b -n 1 | head -n 12  >> /tmp/comp_log.txt
echo -e "\nOpen TCP ports:">>/tmp/comp_log.txt
nmap -open >>/tmp/comp_log.txt
echo -e "\nCurrent Connections:" >> /tmp/comp_log.txt
who   >> /tmp/comp_log.txt      
echo -e "\nProcesses:" >> /tmp/comp_log.txt
ps -ef    >> /tmp/comp_log.txt

