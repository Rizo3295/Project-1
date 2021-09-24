#!/bin/bash
output=/home/sysadmin/research/sys_info.txt

paths=( '/etc/passwd' '/etc/shadow' )

for path in ${paths[@]}
do 
ls -la $path
done 
  
if [ ! -d ~/research ]
then
     mkdir /home/sysadmin/research
else 
     echo "The folder exists."
fi

if [ ! -f /home/sysadmin/reseach/sys_info.txt ]
then
    echo " Does not exists."
else 
    rm /home/sysadmin/research/sys_info.txt
fi


echo "Display ststem info" >> $output
date >> $output
uname >> $output
whoami >> $output
route -n >> $output
