#!/bin/bash
s=1
while [ -f "/root/backups/diff${s}_backups.tar.gz" ]
do
        s=$(($s+1))
done
tar -g /root/backups/different -zcf /root/backups/diff${s}_backups.tar.gz /root/packer/ /root/*.sh /home/wwwroot/ /usr/local/tomcat/tomcat10/webapps/ --exclude=/home/wwwroot/default/.noble/* >> /dev/null 2>&1 && boolno='1' || boolno='0'
if [ "$boolno" = '1' ]; then
	echo "succeful"
	exit 0
else
	echo "error"
	exit 0
fi
