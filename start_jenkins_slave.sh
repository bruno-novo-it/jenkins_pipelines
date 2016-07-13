#!/bin/bash

## Change to the dir where the script is located and
# get the full name into a variable
cd "$(dirname $0)"
WORK_DIR="$(pwd)"

if ps -ef | grep -v grep | grep slave.jar
then
	echo "The process is already running!"
	exit
fi 

java -jar slave.jar \
	-jnlpUrl http://localhost:8080/computer/slave/slave-agent.jnlp \
	-secret e0374dad5ef81d20f8506fcbfc1cb52fd2bf46214b7bd258fd17cf8650f65dfd &> slave.log &
disown
