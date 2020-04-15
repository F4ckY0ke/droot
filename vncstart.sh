#!/bin/bash
case $1 in
	"start")
		vncserver -geometry 1280x720 :1 >> /dev/null 2>&1 && panduan='1' || panduan='0'
		if [ "$panduan" = '1' ]; then
		echo "开启成功！"
		exit 0
		else
			echo "开启中！"
			exit 0
		fi
	;;
	"stop")
		vncserver -kill :1 >> /dev/null 2>&1 && panduan='1' || panduan='0'
		if [ "$panduan" = '1' ]; then
		echo "关闭成功！"
		exit 0
		else
			echo "关闭中!"
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
