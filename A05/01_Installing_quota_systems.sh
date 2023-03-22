#Working on ubuntu

sudo apt update

sudo apt install -y quota

quota --version

find /lib/modules/ -type f -name '*quota_v*.ko*'

sudo apt install linux-image-extra-virtual

find /lib/modules/ -type f -name '*quota_v*.ko*'








We will use the Ubuntu system and install the quota management tools.

In general, cloud-based systems including Vagrant, will have a smaller customized install base.
This means that we may not have the quota filesystem modules needed. If they are missing, we
can install them.