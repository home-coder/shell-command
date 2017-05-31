#!/bin/bash

echo ########## awk #############把每一行的数据保存
echo =============gawk 1 搜索文本中每一行中以 , 分割后的第一个字符串====================
while read line; do
	var=$(echo $line | grep -E ',')
	if [[ $var ]]; then
		echo $line |gawk  -F',' '{print $1}'
	fi
done < $1

echo ===============gawk 2 把当前路径每一个目录保存，然后拼接成一个路径===================
pwd=`pwd`
arry=($(echo $pwd | awk -F '/' '{for(i=1; i<=NF; i++) print $i}'))
echo ----------------
echo ${arry[*]}
first=1
for var in ${arry[*]}; do
	if [[ $first -eq 1 ]]; then
		str=${var[i]}
		first=0
	else
		str=${str}-${var[i]}
	fi
done
echo $str

echo ===============gawk 3 外部变量的传递==========================
VAR=10000 
echo | awk -v VARIABLE=$VAR '{ print VARIABLE }'
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1----2017-5-27-6:00收工---------------------------------------------
echo ######### sed #############


echo ######## seq #############


echo ######## grep ############


echo ######## cut  ############

echo ==========expact===================
