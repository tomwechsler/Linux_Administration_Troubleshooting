#Working on ubuntu


free -h

swapon -s

sudo fallocate -l 500m /var/swap1

sudo fallocate -l 500m /var/swap2

sudo chmod 600 /var/swap*

sudo mkswap /var/swap1

sudo mkswap /var/swap2

sudo swapon /var/swap1

swapon -s

free -h

sudo swapon -p 10 /var/swap2

swapon -s

free -h

sar -S

cat /proc/sys/vm/swappiness


We can view memory utilization as a whole, or specifically for swap. If we have multiple swap
devices, we can set a priority for each device. The highest value will be used first.


We can use disks, partitions or files as swap space. For ease we will use swap files. We add swap
headers to the space with mkswap and we mount the swap space with swapon. The default
priority starts at -2 but we can set a higher priority for space we want to use first.

We can affect how likely the Kernel is to swap to disk over dropping memory pages through the
swappiness setting. Ranging from 0 through to 100, with 0 being less likely to swap to disk and
100 being most likely to swap to disk. The default value is 60.