#!/bin/bash

echo -e  " ************** Options to generate Sibling Accounts ******\n\n"
echo -e  " Options 1) Account creation through /root/user_info.txt "
echo -e  " Options 2) Account creation by manual inputs   \n"
echo -e  " choose Option(1/2) : "
read Option
echo $Option

if [ $Option -eq 1 ]
then 
    echo -e  " Creating accounts based on /root/user_info.txt file \n"
    awk '{print$1":"$2":"}' /root/user_info.txt > /root/clean_user_info.txt
for Sibling in $(cat /root/clean_user_info.txt)
   do	
    Name="$(echo -e  $Sibling | awk -F: '{print $1}')"
    echo -e  "\n Creating user $Name"
    sudo useradd  -m  -s /bin/bash $Name 2>/dev/null
    sudo touch /home/$Name/website.txt 2>/dev/null
    sudo chmod 644 /home/$Name/website.txt 2>/dev/null
   done
   
else
    echo -e  " Option is 2 \n"
    echo -e  "Please enter Name  : \n " 
    read Name
    echo -e  "\n Creating user $Name"
    sudo useradd  -m  -s /bin/bash $Name 2>/dev/null
    sudo touch /home/$Name/website.txt 2>/dev/null
    sudo chmod 644 /home/$Name/website.txt 2>/dev/null
fi
