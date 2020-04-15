#!/bin/bash
s=1
while [ -f "wget$s" ]
do
	s=$(($s+1))
done
wget -b -o wget$s "$1" >> /dev/null 2>&1 && fileno='1' || fileno='0'
if [ "$fileno" = '1' ]; then
        echo "文件开始下载！"
        exit 0
else
        echo "文件下载失败！"
        exit 0
fi

