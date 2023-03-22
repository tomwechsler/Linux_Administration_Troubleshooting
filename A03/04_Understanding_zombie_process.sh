#Working on ubuntu

vim zombie.c

apt install -y build-essential

gcc zombie.c -o zombie

./zombie &

ps -elf | grep -w Z

top -b -n 1 -u $USER




We will the build-essential package, allowing us to compile a simple program to demonstrate
zombie processes.

The parent process will sleep for 5 minutes, during the sleep time the child process will end and
will stay in a zombie state until the parent wakes and stops the process.