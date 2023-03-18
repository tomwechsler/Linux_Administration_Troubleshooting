#Working on alma

#Enable and start the firewall
sudo systemctl enable --now firewalld

#Check the firewall
sudo firewall-cmd --list-all

#Working on openSUSE
sudo zypper in -y nmap

#Use nmap
sudo nmap 192.168.56.101

ping 192.168.56.101

#Working on alma
sudo firewall-cmd --addd-icmp-block=echo-request

sudo firewall-cmd --list-all

#Back on openSUSE
ping 192.168.56.101



Working on AlmaLinux8
The default firewall allows port 9090/tcp even though cockpit is not installed.


Working on OpenSUSE 15.2
Installing nmap and scanning the default top 1000 ports will list 998 filtered ports, not allowed
through firewall and 22/tcp open and 9090/tcp closed. This is a clue that it is RedHat based
system without cockpit loaded.