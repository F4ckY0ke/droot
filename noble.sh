#/bin/bash
case $1 in
	"start")
	mv /home/wwwroot/default/.noble/ /home/wwwroot/default/noble/ && panduan="1" || panduan="0"
	if [ "$panduan" = "1" ]; then
		echo "succeful!"
	else
		echo "error!"
	fi
	;;
	"stop")
	mv /home/wwwroot/default/noble/ /home/wwwroot/default/.noble/ && panduan="1" || panduan="0"
	if [ "$panduan" = "1" ]; then
		echo "succeful!"
	else
		echo "error!"
	fi
	;;
esac
