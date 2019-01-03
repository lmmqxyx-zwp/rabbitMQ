#!/bin/bash

count=$#
if [ $count == 0 ];then
	echo '请输入参数：执行脚本的次数！'
exit 1;
fi

exe_loop_num=$1

CP=.:amqp-client-5.5.1.jar:slf4j-api-1.7.25.jar:slf4j-simple-1.7.25.jar

for((i=1; i<=$exe_loop_num; i++))
do
	java -cp $CP NewTask '消息发送 => '$i
	#echo $i
done
