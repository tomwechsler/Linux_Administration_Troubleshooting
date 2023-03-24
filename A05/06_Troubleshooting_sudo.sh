#Working on ubuntu

sudo -l

export EXPORT=vim

sudo visudo

#Now it works
sudo --preserve-env=EDITOR visudo

#Or we set it in the sudoers file
Defaults env_keep += "EDITOR"

#Save and exit

sudo visudo

sudo -l

A user can always check what they are allowed to do with sudo -l. Often though the problem
relates to environment variables not being carried through. My aaproach is to add the variables
I need for each command, but we could also allow variables in the sudoers file.


