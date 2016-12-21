#!/bin/bash

# http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html
# Don't forget to enable syntax highlighting

# This is backup of srcipt dir (need check .git tree)

backupdir=~/bashlearn
backupfiles=~/tldp
tarfile=$tempdir/tldpbgb.tar
bzipfile=/
server=192.168.122.145
remotedir=/home/kurgulus/
logfile=script.log
username=kurgulus

cd /tmp
export tempdirb=`mktemp -d`
cd $backupdir
tar cf $tempdirb/tldpbgb.tar $backupfiles > /dev/null 2>&1
echo "Backup stored to $tempdirb"

scp $tarfile $username@$server:$remotedir
date >> ~/tldp/ch3.2.6.variable.log
echo backup succeeded >> $remotedir/$logfile
