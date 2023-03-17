#Working on alma

#Add the epel-release
sudo dnf install epel-release -y

#Now install nload
sudo dnf install -y nload

#First we use ethtool (to see the cuurent configuration)
ethtool enp0s3

#Now we use nload
nload enp0s3

#Generate some traffic
wget http://mirror.init7.net/almalinux/9.1/isos/x86_64/AlmaLinux-9-latest-x86_64-boot.iso &> /dev/null &

#Now we use nload
nload enp0s3

The CLI command nload is used to monitor the current bandwidth. The view the speed and
configuration of a NIC we can use ethtool.