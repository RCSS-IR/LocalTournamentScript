#!/bin/sh
left=$1
right=$2
left_=$(cat colors | grep "^$left ")
right_=$(cat colors | grep "^$right ")
left_c=""
right_c=""
for c in $left_
do
	left_c=$c
done
for c in $right_
do
	right_c=$c
done

if [ "$left_c" = "" ]; then
	left_c="#EDD400"
fi
if [ "$right_c" = "" ]; then
	right_c="#00BFFF"
fi
echo "left: $left_c"
echo "right: $right_c"
tmp_left=$(cat ~/.rcssmonitor.conf | grep "left_team=" | head -n 1)
tmp_right=$(cat ~/.rcssmonitor.conf | grep "right_team=" | head -n 1)
sed -i "0,/${tmp_right}/s//right_team=${right_c}/g"  ~/.rcssmonitor.conf
sed -i "0,/${tmp_left}/s//left_team=${left_c}/g"  ~/.rcssmonitor.conf
