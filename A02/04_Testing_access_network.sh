#Working on ubuntu

ping $(/sbin/ip route show | awk '/default/ { print $3 }')

ping 127.1

ping 1.1

#Check for the correct subnet config
ip -4 addr show

ip -4 route

#Disable ping
echo net.ipv4.icmp_echo_ignore_all=1 | sudo tee /etc/sysctl.d/ping.conf

sudo sysctl --system

ping localhost

#Use nmap
sudo apt install -y nmap

nmap -p 22 localhost 

nmap -p 22 192.168.56.101-103



Automation is always great, often the first step in debugging network access is to ping the
default gateway. This clever hack automates the resolution of the default gateway for ping.


If the middle octets are all zeros in an IPv4 address, they can be omitted. This can be show
with the loopback address but is more useful on the Cloudflare DNS server 1.0.0.1. This is
configured to accept ICMP pings.


The subnet mask can be seen in your route table or your address listing. If you have a
misconfigured subnet mask you may not be able to connect to all hosts on your network.


If ICMP is disabled on the hosts using the nmap port scanner may be an option but check it is
allowed on your network.
