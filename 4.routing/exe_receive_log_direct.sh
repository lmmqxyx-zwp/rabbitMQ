#!/bin/bash

count=$#
if [ $count == 0 ];then
	echo '请输入参数：direct规则，可以是多个规则，至少需要一个！'
exit 1;
fi

CP=.:amqp-client-5.5.1.jar:slf4j-api-1.7.25.jar:slf4j-simple-1.7.25.jar

java -cp $CP ReceiveLogsDirect $*
