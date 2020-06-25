#!/bin/sh
base_dir=`pwd`
log_dir=$1
if [ "$log_dir" = "" ]; then
	$log_dir=$base_dir
fi
mkdir $log_dir
while true; do
	cd $base_dir
	line=$(head -n 1 games)
	if [ "$line" = "" ]; then
		break
	fi
	echo $line
	bash color.sh $line &
	rcssmonitor --auto-reconnect-mode on --auto-reconnect-wait 1 --full-screen &
	cd logs
	rcssserver &
	sleep 1
	server_pid=$!
	for team in $line
	do
		cd $base_dir
		bash run_team.sh $team $log_dir $line&
		sleep 2
	done
	wait $server_pid
	killall rcssmonitor
	echo "-----------------"
	cd $base_dir
	tail games -n +2 > games_tmp
	cat games_tmp > games
	sleep 10
done
