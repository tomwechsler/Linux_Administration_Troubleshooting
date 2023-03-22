#Working on ubuntu

sudo vim /etc/fstab

#Delete defaults and add usrquota (optional grpquota)

#Save and exit

mount -t ext4

sudo mount -o remount /

mount -t ext4

ls /

sudo quotacheck -um / #-g for group quota

ls /

lsmod | grep quota

sudo modprobe quota_v1 && sudo modprobe quota_v2

lsmod | grep quota

#-v for verbose
sudo quotaon -v /

sudo repquota -u -a

sudo setquota -u ubuntu 150M 200M 0 0 /

sudo repquota -u -a

#-s for human readable
sudo quota -vs ubuntu

#We can set an other grace period
sudo setquota -t 86400 86400 /

#-s for human readable
sudo repquota -s /

#Logon as ubuntu
sudo su - ubuntu

sudo fallocate -l 100M file1

#-s for human readable
sudo quota -vs ubuntu

sudo fallocate -l 60M file2

#-s for human readable
sudo quota -vs ubuntu

#Does not work
sudo fallocate -l 60M file3



We now must configure quotas which are set as mount options on filesystems. We can add eiter
or both options for users and groups. We establish the databases with quotacheck. We can
reboot or load the modules and enable quotas for the root filesystem. We just need to set
quotas for our users or groups.