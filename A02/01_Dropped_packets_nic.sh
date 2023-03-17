#Working on alma

#Lets list the links
ip link

#The statistics
ip -s link show enp0s3 #-s = statistics

ip -s link show enp0s3 #Some traffic on the nic

#The raw data
cat /proc/net/dev

#The infos with tabspace (-t = tabs)
column -t /proc/net/dev



The main command is ip -s link, however we can interrogate the base file and introduce the
column command.

