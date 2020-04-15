#!/bin/bash
ssstart="$(ps aux|grep ssserver|grep python|awk '{print $2}')"
if [ -n "$ssstart" ]; then
	echo -n "ss服务开启中:"
	echo $ssstart
else
		echo "ss服务关闭中!"
fi
vncstart="$(ps aux|grep Xtightvnc|grep desktop|awk '{print $2}')"
if [ -n "$vncstart" ]; then
	echo -n "远程桌面开启中:"
	echo $vncstart
else
		echo "远程桌面停止中！"
fi
if [ -f "/home/wwwroot/upload.php" ]; then
	echo "上传停止中！"
else
	echo "上传开启中！"
fi
if [ -d "/home/wwwroot/default/noble" ]; then
	echo "noble开启中!"
else
	echo "noble关闭中!"
fi
wgetstart="$(ps aux|grep wget|grep http)"
if [ -n "$wgetstart" ]; then
	echo -n "文件下载中:"
else
	wgetstart="$(ps aux|grep wget|grep http)"
	if [ -n "$wgetstart" ]; then
		echo -n "文件下载中:"
	else
		echo "暂无文件下载！"
	fi
fi
uwget=""
num=1
for ((i=1;i<=20;i=i+1))
do
	nwget="$(ps aux|grep wget$num|grep http|awk '{print $2}')"
	uwget="$uwget $nwget"
	num=$(($num+1))
done
echo $uwget
dkkfqk="$(nmap localhost|grep open|grep -v '21\|22\|80\|3306\|631')"
if [ -n "$dkkfqk" ]; then
	echo "端口开放情况:"
	echo $dkkfqk
fi
s=1
while [ -f "wget$s" ]
do
	if [ "$s" = "1" ]; then
		echo -n "文件下载情况:"
	fi
	echo " "	
	echo -n "文件$s:"
	fiil="$(ps aux|grep wget$s|grep http|awk '{print $2}')"
	if [ -n "$fiil" ]; then
		echo -n "($fiil)"
	fi
	cat wget$s|grep '[0-9]*%'|tail -n 1|awk '{print $(NF-2)" "$(NF-1)" "$NF}'
	s=$(($s+1))
done
