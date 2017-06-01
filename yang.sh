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


echo ==============端午放假 爬华山  归来， 看看还能不能把上面的拼接路径实现===================
pwd=`pwd`
arry=($(echo $pwd | awk -F '/' '{for(i=1; i <=NF; i++) print $i}'))
echo ${arry[*]}

mstr=""
for var in ${arry[*]}; do
	if [[ -z $mstr ]]; then
		mstr=$var
	else
		mstr=$mstr-$var
	fi
done
echo $mstr

echo ===============gawk 3 外部变量的传递==========================
VAR=10000 
echo | awk -v VARIABLE=$VAR '{ print VARIABLE }'
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1
#gawk1----2017-5-27-6:00收工---------------------------------------------
echo ######### sed #############
echo '例子===========sed in vim, %s/src/dst/g============='
#'例子====cat build_config/build_info_C49S.txt | grep 'kuyun:' | sed 's/kuyun://g' | sed 's/;.*//g'==========='
#info=/home/jiangxiujie/mstar-638-tv/Mstar-638/build/build_config/build_info_C49S.txt
info=test.txt
echo `sed -n '/kuyun:/p' $info` | gawk -F ':' '{print $2}' | sed 's/;//'
echo `sed -n '/kuyun:/p' $info` | gawk -F ':' '{print $2}' | sed 's/.$//' #最后一个字符去掉

#sample 2 过滤出所有以#号开头的文件
sed -n '/^\#/p' $info
echo "follow is ok, also."
grep ^\# $info

echo ######## seq #############


echo ######## grep ############


echo ######## cut  ############

echo ==========expact===================
