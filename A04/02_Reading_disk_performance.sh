#Working on ubuntu

sar -b

sar -d

sar -f -b /var/log/sysstat/sann



The sar command can show us disk activity, with sar -b showing transaction per second and sar
-d breaking it down further by block device. As with and sar activity, we can query information
other than todays data using -f to specify the file.