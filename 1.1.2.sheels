#!/bin/bash

cat /etc/shells
echo -e "\n"

echo '# default shell: echo $SHELL'
echo $SHELL


# Tips (will eventually be filled) : 
#
# 	When invoked as rbash or with the --restricted or -r option, the following happens:
#	- The cd built-in is disabled.
#	- Setting or unsetting SHELL, PATH, ENV or BASH_ENV is not possible.
#	- Command names can no longer contain slashes.
#	- Filenames containing a slash are not allowed with the . (source) built-in command.
#	- The hash built-in does not accept slashes with the -p option.
#	- Import of functions at startup is disabled.
#	- SHELLOPTS is ignored at startup.
#	- Output redirection using >, >|, ><, >&, &> and >> is disabled.
#	- The exec built-in is disabled.
#	- The -f and -d options are disabled for the enable built-in.
#	- A default PATH cannot be specified with the command built-in.
#	- Turning off restricted mode is not possible.
#	
#	When a command that is found to be a shell script is executed, rbash turns off any restrictions in the shell
#	spawned to execute the script.
