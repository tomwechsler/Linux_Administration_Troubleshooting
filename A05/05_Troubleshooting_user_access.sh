#Working on ubuntu

#A simple check list

su - ubuntu

#Check user ID
id

#Check group membership
id

#For a user no more than 64 groups: More than 64 group memberships will cause problems

#On red hat based systems do not forget SELinux
sudo ausearch -m AVC -ts recent

