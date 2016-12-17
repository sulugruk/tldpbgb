#!/bin/bash

# Where is the bash program located on your system? 
cat /etc/shells
printf '\n'

# Use the --version option to find out which version you are running.
printf '# bash --version:\n'
bash --version
printf '\n'

# Which shell configuration files are read when you login to your system using the graphical user interface and then opening a terminal window?" 
printf '# $HOME/.bashrc:\n'
printf "$HOME/.bashrc\n\n"

# Are the following shells interactive shells? Are they login shells?
#	- A shell opened by clicking on the background of your graphical desktop, selecting "Terminal" or such from a menu. Answer: no
#	- A shell that you get after issuing the command `ssh localhost`. Answer: yes
#	- A shell that you get when logging in to the console in text mode. Answer: no
#	- A shell obtained by the command `xterm &`. Answer: no
#	- A shell opened by the `mysystem.sh` script. Answer: yes
#	- A shell that you get on a remote host, for which you didn't have to give the login and/or password because you use SSH and maybe SSH keys. Answer: yes

# Can you explain why bash does not exit when you type Ctrl+C on the command line?
# Answer: In the absence of traps (SIGINT). Typing Ctrl+C, will not quit interactive shell.

# Display directory stack content.
printf '# $DIRSTACK:\n'
printf '$DIRSTACK\n\n'

###echo -e "Normal \e[4mUnderlined"

printf '# ~/.bashrc: $PS1\n'
cat $HOME/.bashrc | grep PS1
printf '\n\n'

#Display hashed commands for your current shell session.
printf '$ hashed commands\n'
hash
printf '\n'

# How many processes are currently running on your system? Use ps and wc, the first line of output of ps is not a process!
printf '# currently running processes:\n'
ps -r | wc -l
printf '\n'

# How to display the system hostname? Only the name, nothing more!
printf '# To dissplay hostname: hostname or uname -n\n'
hostname


