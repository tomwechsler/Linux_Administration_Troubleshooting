#Working on ubuntu

uptime

uptime -s #just uptime no load averages

uptime -p #just uptime but simplified or so-called pretty output

man uptime

cat /proc/uptime

man procfs

lscpu

lscpu | grep '^CPU(s):' | cut -f2 -d: | tr -d ' ' 



The command uptime will show load averages, but these relate to the number of CPUs you have
on the system. High averages are OK, but it just means that some requests may be queued, for a
short time this is acceptable but not for longer periods.