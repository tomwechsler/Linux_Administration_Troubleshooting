#Working on ubuntu

mpstat

tar -cJf ysr.tar.xz /usr/share &> dev/null & 

mpstat 1 60 

tar -cJf ysr.tar.xz /usr/share &> dev/null & 

mpstat -P 0 1 60

sar -u / sar -u




The sysstat utility, mpstat, monitors CPU utilization. My system has 2 CPUs, the xz compressor is
a single process and runs on a single CPU. Without specifying the CPU, we see a high of 50%
utilization. If we specify the processor, it will be maxed out at 100%.u