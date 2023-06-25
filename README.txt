# Spider-Devops-Task1
copy all three files to root directory
#Please login  user account with Sudo previledges.
sudo -i ( to Root) 
#######To run Sibling.sh#######
. Sibling.sh

#######To install nmap on system#######
apt-get install nmap -y

#######Creating a Cronjob#######
to add an entry ( it creates file /var/spool/cron/crontab/) ----> crontab -e
append the following text ----> 0 18 * * * /root/sample.sh
Giving executable permissions for sample.sh ----> chmod +x sample.sh
to see contents of comp_log.txt ----> cat /tmp/comp_log.txt or nano /tmp/comp_log.txt

#######System Information#######
. system_info.sh
to see contents of system_info.txt ----> cat system_info.txt or nano system_info.txt
