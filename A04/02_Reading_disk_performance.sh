#Working on ubuntu

sar -b

#Day 21
sar -b -f /var/log/sysstat/sa21

#Today
sar -d #-d for device (/dev/sda)

#Check the major:minor number
lsblk

sar -d


The sar command can show us disk activity, with sar -b showing transaction per second and sar
-d breaking it down further by block device. As with and sar activity, we can query information
other than todays data using -f to specify the file.