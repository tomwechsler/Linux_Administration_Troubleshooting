#Working on ubuntu

sudo vim /etc/fstab

#add options usrquota (optional grpquota)

sudo mount -o remount /

mount -t ext4

ls /

sudo quotacheck -um / #-g for group quota

ls /

lsmod | grep quota

sudo modprobe quota_v1 && sudo modprobe quota_v2

lsmod | grep quota

sudo quotaon -v /

sudo repquota -u -a

sudo 




ls /aquota*






We now must configure quotas which are set as mount options on filesystems. We can add eiter
or both options for users and groups. We establish the databases with quotacheck. We can
reboot or load the modules and enable quotas for the root filesystem. We just need to set
quotas for our users or groups.