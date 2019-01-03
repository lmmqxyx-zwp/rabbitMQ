#!/bin/bash

count=$#
if [ $count != 2 ];then
	echo '请输入参数：第一个参数为direct规则，第二个参数为发送的消息内容！'
exit 1;
fi

CP=.:amqp-client-5.5.1.jar:slf4j-api-1.7.25.jar:slf4j-simple-1.7.25.jar

java -cp $CP EmitLogDirect $1 $2
