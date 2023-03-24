#Working on ubuntu

#System startup time
systemctl-analyze

#If this specific service is disabled, it does not mean that the system will now boot 2 seconds faster.
systemctl analyze-blame





A great tool in systemd is the ability to identify the facts about the system startup, allowing us
to identify services that take a time to start.