#!/bin/bash
case $1 in
	"rar")
	ls /home/wwwroot/default/upload/"$2" >> /dev/null 2>&1 && panduan='1' || panduan='0'
	if [ "$panduan" = '1' ]; then
		unrar x /home/wwwroot/default/upload/"$2" /home/wwwroot/default/upload/ >> /dev/null 2>&1 && rarno='1' || rarno='0'
		if [ "$rarno" = '1' ]; then
			echo "解压成功"
		else
			echo "解压失败"
		fi
	fi
	;;
	"zip")
	ls /home/wwwroot/default/upload/"$2" >> /dev/null 2>&1 && cunzai='1' || cunzai='0'
	if [ "$cunzai" = '1' ]; then
		unzip /home/wwwroot/default/upload/"$2" /home/wwwroot/default/upload/ >> /dev/null 2>&1 && zipno='1' || zipno='0'
		if [ "$zipno" = '1' ]; then
			echo "解压成功"
		else
			echo "解压失败"
		fi
	fi
	;;
esac

