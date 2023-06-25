!/bin/bash

# Get desktop processor information
processor=$(grep 'model name' /proc/cpuinfo | uniq | awk -F': ' '{print $2}')

# Get system kernel version
kernel=$(uname -r)

# Get installed software packages
software=$(dpkg-query -f '${Package}\n' -W)

# Get operating system version
os_version=$(lsb_release -d | awk -F'\t' '{print $2}')

# Get desktop memory information
memory=$(free -h | awk '/^Mem/ {print $2}')

# Get system serial number
serial=$(sudo dmidecode -s system-serial-number)

# Get system IP address
ip=$(hostname -I | awk '{print $1}')


cat << EOF > system_info.txt
========================
      SYSTEM INFO
========================
Desktop Processor: $processor
System Kernel: $kernel
Operating System Version: $os_version
Desktop Memory: $memory
Serial Number: $serial
System IP: $ip
-------------------------
Installed Software:
$software

EOF

echo "System information has been saved to system_info.txt."
