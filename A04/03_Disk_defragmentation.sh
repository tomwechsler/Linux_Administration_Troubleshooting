#Working on ubuntu

sudo dumpe2fs /dev/sda1 | grep extent

sudo e4defrag -c /

sudo e4defrag /

#Working on alma
sudo xfs_fsr /


Later EXT4 filesystems support defragmentation if the extent feature is enabled.

In XFS, defragmentation is known as File System Reorganization, hence xfs_fsr. The AlmaLinux 8
system has an XFS root filesystem by default.