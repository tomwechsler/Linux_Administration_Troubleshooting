#Working on ubuntu

sudo apt install -y ioping

ioping .

ioping . -c20

#-R for the summary report at the end
ioping . -R -c20

sudo ioping -R -c20 /dev/sdb



The ioping utility, can be used to measure disk spend and latency in mutch the same way that
ping can measure your network access speed.