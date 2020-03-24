#!/bin/bash
# @Author: daxunyun
# @Date:   2018-10-01 17:44:45
# @Last Modified by:   daxunyun
# @Last Modified time: 2019-10-01 17:44:45


case $1 in 
	start)
		nohup ./nats-server 2>&1 >> info-nats-server.log 2>&1 &
		nohup ./consul agent --dev 2>&1 >> info-consul.log 2>&1 &
		sleep 1s
		nohup bin/server 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已启动..."
	;;
	stop)
		killall bin/server
		killall consul
		killall nats-server
		echo "服务已停止..."
	;;
	restart)
		killall bin/server
		killall consul
		killall nats-server
		sleep 1s
		nohup ./nats-server 2>&1 >> info-nats-server.log 2>&1 &
		nohup ./consul agent --dev 2>&1 >> info-consul.log 2>&1 &
		sleep 1s
		nohup bin/server 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已重启..."
	;;
	*) 
		echo "$0 {start|stop|restart}"
		exit 4
	;;
esac
