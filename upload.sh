#!/bin/bash
case $1 in
	"start")
		ls /home/wwwroot/upload.php >> /dev/null 2>&1 && panduan='1' || panduan='0'	#如果upload.php存在则给变量赋值为1，不存在则为0
		if [ "$panduan" = '1' ]; then
#判断upload.php是否存在，存在则执行
		mv /home/wwwroot/default/index.html /home/wwwroot/default/index1.html
		mv /home/wwwroot/index.html /home/wwwroot/default/index.html
		mv /home/wwwroot/upload.php /home/wwwroot/default/upload.php
		mv /home/wwwroot/upload_file.php /home/wwwroot/default/upload_file.php
		mv /home/wwwroot/upload2.php /home/wwwroot/default/upload2.php
		mv /home/wwwroot/upload_file2.php /home/wwwroot/default/upload_file2.php
		mv /home/wwwroot/default/index1.html /home/wwwroot/index.html
		echo "上传开启成功！"
		exit 0
		else
			echo "文件上传开启中！"
			exit 0
		fi
	;;
	"stop")
		ls /home/wwwroot/upload.php >> /dev/null 2>&1 && panduan='1' || panduan='0'	#如果upload.php存在则给变量赋值为1，不存在则为0
		if [ "$panduan" = "0" ]; then
#判断upload.php是否存在，存在则执行
		mv /home/wwwroot/default/index.html /home/wwwroot/default/index1.html
		mv /home/wwwroot/index.html /home/wwwroot/default/index.html
		mv /home/wwwroot/default/upload.php /home/wwwroot/upload.php
		mv /home/wwwroot/default/upload_file.php /home/wwwroot/upload_file.php
		mv /home/wwwroot/default/upload2.php /home/wwwroot/upload2.php
		mv /home/wwwroot/default/upload_file2.php /home/wwwroot/upload_file2.php
		mv /home/wwwroot/default/index1.html /home/wwwroot/index.html
		echo "上传关闭成功！"
		exit 0
		else
			echo "文件上传关闭中!"
			exit 0
		fi
	;;
	"")
		echo "Args null."
	;;

	*)
		echo "Just start or stop."
	;;
esac
