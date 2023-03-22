#Working on ubuntu

sudo passwd ubuntu

#-S for status
sudo passwd -S ubuntu #Uppercase P password is set

#Lock the account
sudo passwd -l ubuntu

#We can not login
su - ubuntu

#-S for status
sudo passwd -S ubuntu

#Unlock the account
sudo passwd -u ubuntu

#We can login
su - ubuntu

exit

sudo chage -l ubuntu

#Often the ssh config is the problem
sudo grep PasswordAuthentication /etc/ssh/sshd_config

#The last bad login
sudo lastb
