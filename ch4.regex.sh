#!/bin/bash

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# url: http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_01.html +
# url: http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_05.html +
# Don't forget to enable syntax highlighting                             +
# man grep								 +
# man 7 regex								 +
# man 7 glob								 +
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++i
(
printf '1. Display a list of all the users on your system who log in with the Bash shell as a default. \n'
printf "# cat /etc/passwd | grep /bash \n"
cat /etc/passwd | grep /bash
echo

printf "2. From the /etc/group directory, display all lines starting with the string \"daemon\" \n"
printf "# grep ^daemon /etc/group \n"
grep ^daemon /etc/group
echo

printf "3. Print all the lines from the same file that don't contain the string. \n"
printf "# grep -v daemon /etc/group \n"
grep -v daemon /etc/group
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

printf "#5. Display a list of /usr/share/doc subdirectories containing information about shells. \n"
printf "# grep -nR1 'shells' /usr/share/doc/* \n"
# grep -nr1 'shells' /usr/share/doc/*
# or 
# grep -nrH 'shells' /usr/share/doc/*
grep -nR1 'shells' /usr/share/doc/*
echo 

printf "6. How many README files do these subdirectories contain? Don't count anything in the form of \"README.a_string\"."
printf "# grep -Rn 'README' --include=README /usr/share/doc/*"
grep -rn --include=README 'README' /usr/share/doc/*
echo

printf "7. Make a list of files in your home directory that were changed less that 10 hours ago, using grep, but leave out directories."
ls -lR ~ | grep -E "`date '+%b %d '`[`date '+%H' --date='10 hours ago'``date '+%H'`]"


) | less

