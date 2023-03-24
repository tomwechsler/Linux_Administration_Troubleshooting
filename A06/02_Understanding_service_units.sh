#Working on ubuntu

#Helpful information (ExecStart=)
man 5 systemd.service

man 5 systemd.timer

#The sshd service
systemctl cat sshd.service

#Change the config
sudo vim /etc/default/ssh

SSHD_OPTS="-d" #-d debug mode

#Save and exit

sudo systemctl restart sshd

systemctl status sshd

sudo systemctl status sshd


The systemd service units are well documented, we can also view the content of existing units.
The sshd.service unit starts SSH with SSHD_OPTS. Those options can be configured in the file
/etc/default/ssh. Here we put service into debig mode.