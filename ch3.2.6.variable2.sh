#!/bin/bash

# http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html
# Don't forget to enable syntax highlighting in vim - `:sy enable`

# This script makes backup of srcipt dir (need check .git tree)
# Change the values of the variables to make the script work for you:

cd /tmp
# I dont want to forget this command, thus using it.
export tempdirb=`mktemp -d`
backupdir=~/bashlearn
backupfiles=tldpbgb
tarfile=tldpbgb.tar
server=192.168.122.145
remotedir=/home/kurgulus
logfile=ch3.2.6.variable2.sh.log
username=kurgulus

cd $backupdir

# creating archive
tar cf $tempdirb/$tarfile $backupfiles > /dev/null 2>&1
echo "Backup stored to $tempdirb"
cd $tempdir

# copy the file to remote host via scp 
#scp $tempdirb/$tarfile $username@$server:$remotedir

# adding current date to log file 
date >> $backupdir/$backupfiles/$logfile
scp $tempdirb/$tarfile $backupdir/$backupfiles/$logfile $username@$server:$remotedir
echo "backup succeeded >> $backupdir/$backupfiles/$logfile"

# cleaning tmp dir
rm -rf $tempdirb
exit 0
