#Working on ubuntu

sudo mount -o remount,barrier=0,commit=60 / 

sudo mount -o remount,barrier=1,commit=5 / #defaults 

man 5 ext4



Disabling the barrier option will turn the filesystem journal off. The journal implements
transaction tracking for open files that can be replayed on a reboot. The filesystem sync
defaults to 5 seconds, but we can extend it. We keep writes longer in cache before writing to
disk.