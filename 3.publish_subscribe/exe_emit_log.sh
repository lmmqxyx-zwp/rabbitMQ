#!/bin/bash

CP=.:amqp-client-5.5.1.jar:slf4j-api-1.7.25.jar:slf4j-simple-1.7.25.jar

java -cp $CP EmitLog $1
