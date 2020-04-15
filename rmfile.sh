#!/bin/bash
case $1 in
	"root")
	rm -rf /home/wwwroot/default/upload/A沙雕文化集散中心A/"$2" >> /dev/null 2>&1 && fileno='1' || fileno='0'
	if [ "$fileno" = '1' ]; then
		echo "文件删除成功！"
		exit 0
	else
		echo "文件删除失败！"
		exit 0
	fi
	;;
	"upload")
	rm -rf /home/wwwroot/default/upload/"$2" >> /dev/null 2>&1 && fileno='1' || fileno='0'
	if [ "$fileno" = '1' ]; then
		echo "文件删除成功！"
		exit 0
	else
		echo "文件删除失败！"
		exit 0
	fi
	;;
esac
