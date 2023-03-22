#Working on ubuntu

#Installing sysstat
sudo apt install -y sysstat

#Start the service
sudo systemctl enable --now sysstat

sudo systemctl status sysstat

#Sysstat is gathering information
cat /etc/cron.d/sysstat

#But is not enabled
sudo vim /etc/default/sysstat

#Change to true

#Save and exit

