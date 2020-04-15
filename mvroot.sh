#!/bin/bash
case $2 in
        "in")
	mv /home/wwwroot/default/upload/$1 /home/wwwroot/default/upload/A沙雕文化集散中心A/$1 >> /dev/null 2>&1 && panduan='1' || panduan='0'
	if [ "$panduan" = '1' ]; then
		echo "成功！"
		exit 0
	else
		echo "失败！"
		exit 0
	fi
	;;
        "out")
	mv /home/wwwroot/default/upload/A沙雕文化集散中心A/$1 /home/wwwroot/default/upload/$1 >> /dev/null 2>&1 && panduan='1' || panduan='0'
	if [ "$panduan" = '1' ]; then 
        	echo "成功！"
        	exit 0
	else
        	echo "失败！"
        	exit 0
	fi
	;;
esac
