#!/bin/bash

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# url: http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_01.html +
# url: http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_05.html +
# Don't forget to enable syntax highlighting                             +
# man grep								 								 +
# man 7 regex								 							 +
# man 7 glob								 							 +
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(
printf '1. Display a list of all the users on your system who log in with the Bash shell as a default. \n'
printf "# cat /etc/passwd | grep /bash \n"
cat /etc/passwd | grep /bash
echo
echo

printf "2. From the /etc/group directory, display all lines starting with the string \"daemon\" \n"
printf "# grep ^daemon /etc/group \n"
grep ^daemon /etc/group
echo
echo

printf "3. Print all the lines from the same file that don't contain the string. \n"
printf "# grep -v daemon /etc/group \n"
grep -v daemon /etc/group
echo
echo

printf "4. Display localhost information from the /etc/hosts file, display the line number(s) matching the search string and count the number of occurrences of the string. \n"
printf "# hostname or uname -n \n"
printf "# Hostname - `hostname` \n"
printf "# matching line number(s) \n"
grep -nw `hostname` /etc/hosts
echo
printf "# number of occurrences \n"
grep -cw `hostname` /etc/hosts
echo
echo

printf "5. Display a list of /usr/share/doc subdirectories containing information about shells. \n"
printf "# grep -nR1 'shells' /usr/share/doc/* \n"
# grep -nr1 'shells' /usr/share/doc/*
# or 
# grep -nrH 'shells' /usr/share/doc/*
grep --no-messages -nR1 'shells' /usr/share/doc/*
echo 
echo

printf "6. How many README files do these subdirectories contain? Don't count anything in the form of \"README.a_string\". \n"
printf "# grep -Rn 'README' --include=README /usr/share/doc/* \n"
grep -rco --include=README 'README' /usr/share/doc/* | wc -l
# or 
# grep -rco --include=README 'README' /usr/share/doc/* | grep -c README
echo
echo

printf "7. Make a list of files in your home directory that were changed less that 10 hours ago, using grep, but leave out directories.\n"
ls -lR ~ | grep -E "`date '+%b %d '`[`date '+%H' --date='10 hours ago'``date '+%H'`]" | grep -v '^d'
echo
echo

printf "9. Can you find an alternative for wc -l, using grep? \n"
# Example: ls -l | wc -l
ls -l | grep -cE "`printf '\n'`"
echo
echo

printf "10. Using the file system table (/etc/fstab for instance), list local disk devices. \n"
#grep "/dev/[sd..]" /etc/fstab
grep "/dev/[sh][[:alpha:]][[:alpha:]][[:digit:]]" /etc/fstab
echo
echo

printf "11. Make a script that checks whether a user exists in /etc/passwd. For now, you can specify the user name in the script, you don't have to work with arguments and conditionals at this stage. \n"
username='root'
printf "# grep 'root' /etc/passwd \n"
grep "$username" /etc/passwd
echo
echo

printf "12. Display configuration files in /etc that contain numbers in their names. \n"
grep --no-message -l [[:alnum:]] /etc/* | grep [[:digit:]]
# or
# ls -o /etc/ | grep ^- | awk '{print $8}' | grep [[:digit:]]
# or 
# find /etc -type f -name \*[[:digit:]]\*
# http://stackoverflow.com/questions/41658789/display-configuration-files-in-etc-that-contain-numbers-in-their-names-using-g/41658892
echo






) | less