#Working on the physical host

#Update local repos
sudo apt update && sudo apt upgrade

#Install some tools
sudo apt install -y vim git cpu-checker

#Check for virtualiztion supprt
sudo kvm-ok

#Install virtualbox
sudo apt install virtualbox

#Install vagrant (add hashicorp to the sources list)
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant

#Check the version
vagrant --version

#Clone the repo
git clone https://github.com/tomwechsler/Linux_Administration_Troubleshooting.git

#Change into the directory
cd Linux_Administration_Troubleshooting/A01

#The Vagrantfile
vim Vagrantfile

#Change to the home directory
cd

mkdir tools

cd tools

#Copy the Vagrantfile into your project directory
cp Linux_Administration_Troubleshooting/A01/Vagrantfile .

#Start the deployment
vagrant up

vagrant ssh ubuntu

#Shutdown the vms
vagrant halt

#Delete the vms
vagrant destroy --force



For ease of access to the same virtual machines as on the labs we recommend using
Vagrant and VirtualBox. These are available free of change on Linux, MacOS and Windows.