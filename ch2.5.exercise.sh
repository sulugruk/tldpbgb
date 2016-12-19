#!/bin/bash

# http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_06.html
# Don't forget to enable syntax highlighting `:sy enable`

clear # or Ctrl+L
printf "# home directory: $HOME\n"
printf "# terminal type: $TERM\n"
printf "# ls /etc/rc3.d/S*:\n"

#set -x
ls /etc/rc3.d/S*
#set +x

NonExistingCommand

exit 0
