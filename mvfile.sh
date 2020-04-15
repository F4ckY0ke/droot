#!/bin/bash
for ((i=1;i<=10;i=i+1))
do
	filename="$(ls -l|grep mp4|head -1|awk '{print $9}')"
	if [ -n "$filename" ]; then
		s=1
		while [ -f "/home/wwwroot/default/.noble/$s.mp4" ]
		do
			s=$(($s+1))
		done
		mv $filename /home/wwwroot/default/.noble/$s.mp4
		echo "mvfile $s.mp4"
	else
		rm wget?
		echo "over"
		break
	fi
done
