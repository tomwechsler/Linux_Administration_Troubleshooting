#Working on ubuntu

grep '^password' /etc/pam.d/common-password 


man pam_unix | less +/obscure 

#Login as ubuntu and change password
su - ubuntu

passwd #choose short pw

passwd #choose simple pw

passwd #do it right

#Change the config (Do not use in a productive environment)
sudo vim /etc/pam.d/common-password
password [success=1 default=ignore] pam_unix.so minlen=4 sha512

#Save and exit

passwd #choose short pw

#What about the old passwords
sudo cat /etc/security/opasswd

#Change the config again
sudo vim /etc/pam.d/common-password
password [success=1 default=ignore] pam_unix.so minlen=8 obscure remember=5 sha512

#Save and exit

#Change the password a few times
passwd

#What about the old passwords
sudo cat /etc/security/opasswd



The default complexity is set in the common-password file and the pam_unix.so module. The
complexity rules are made by the obscure option.

The default minimum length of a password is 6 characters. We can increase or lower the value.
Here we set it to 4 characters and have also remove the obscure keyword taking away the 
password complexity rules.

Here we set the minimum length to 8 characters, we restore the complexity requirement
additionally adding password history where the last 5 password are stored for a use in the
/etc/security/opasswd file.