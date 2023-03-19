#Working on alma

#Order of name resolution
grep hosts /etc/nsswitch.conf

#Ping
ping www.ford.com

#Add an host entry
sudo vim /etc/hosts

192.168.56.103  www.ford.com #The ip belongs to the opensuse

#Save and exit

#Ping
ping www.ford.com

#Change the order
sudo vim /etc/nsswitch.conf

#from files dns => dns files

#Save and exit

#Ping
ping www.ford.com

getent hosts

getent hosts www.ford.com

#Working on ubuntu

#Use resolvectl
resolvectl

#Query with resolvectl
resolvectl query www.ford.com

#The DNS server
resolvectl dns enp0s3

#Add a dns server
sudo resolvectl dns enp0s8 1.0.0.1

#Use dig
dig www.ford.com

dig www.ford.com @8.8.8.8



The default configuration allows the host files to be read before DNS. One would expect
exploits to happen for easily on a server file than in DNS, misconfigured host records can
expose your systems.

The CLI command resolvectl is part of the systemd eco-system and allows us the view and
configure DNS settings.