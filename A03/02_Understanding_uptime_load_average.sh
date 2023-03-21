#Working on ubuntu

uptime #load average 1, 5 15 minutes

#What this mean
lscpu

lscpu | grep '^CPU(s):' | cut -f2 -d: | tr -d ' ' 

#If we know the number of cpus we can interpret the values
uptime

uptime -s #just uptime no load averages

uptime -p #just uptime but simplified or so-called pretty output

man uptime

#From the procfs
cat /proc/uptime

man procfs




The command uptime will show load averages, but these relate to the number of CPUs you have
on the system. High averages are OK, but it just means that some requests may be queued, for a
short time this is acceptable but not for longer periods.