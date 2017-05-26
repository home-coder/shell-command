#!/bin/bash

echo ########## awk #############把每一行的数据保存
while read line; do
		echo $line |gawk  -F',' '{print $1}'
done < $1

echo -e "\n" `gawk -F ',' '{print $1}' ./test`

echo ######### sed #############


echo ######## seq #############


echo ######## grep ############


echo ######## cut  ############

echo ==========expact===================
