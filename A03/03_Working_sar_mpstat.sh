#Working on ubuntu

#Monitors CPU utilization
mpstat

#Generate some load
tar -cJf ysr.tar.xz /usr/share &> dev/null & 

#Collect data every 1 second for 60 seconds
mpstat 1 60 

#Generate some load
tar -cJf ysr.tar.xz /usr/share &> dev/null & 

#Look at a specific cpu
mpstat -P 0 1 60

mpstat -P 1 1 60

#Now sas (System Activity Reporter) comes in
sar -u #-u about the cpu

#Now for processor 1
sar -u -P 1

#Generate some load
tar -cJf ysr.tar.xz /usr/share &> dev/null & 

#Top is top
top

#Wait a bit
sar -u #-u about the cpu



The sysstat utility, mpstat, monitors CPU utilization. My system has 2 CPUs, the xz compressor is
a single process and runs on a single CPU. Without specifying the CPU, we see a high of 50%
utilization. If we specify the processor, it will be maxed out at 100%.u