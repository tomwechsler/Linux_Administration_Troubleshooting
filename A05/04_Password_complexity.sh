#Working on ubuntu

grep '^password' /etc/pam.d/common-password 
man pam_unix | less +/obscure 



The default complexity is set in the common-password file and the pam_unix.so module. The
complexity rules are made by the obscure option.