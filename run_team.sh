#!/bin/sh

team=$1
log_dir=$2
left=$3
right=$4
out=${log_dir}${team}_in_${left}_${right}.log

if [[ $1 = *"cyrus"* ]]; then
  cd /home/nader/Desktop/bins/remotecup1/major/final/c2 && ./start.sh &> $out
fi

if [[ $1 = *"razi"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/razi && ./startAll &> $out
#  cd razi && ./startAll &> $out
fi

if [[ $1 = *"oxsy"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/oxsy && ./startlocal &> $out
fi

if [[ $1 = *"fra"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/fra && ./start_team.sh &> $out
fi

if [[ $1 = *"fcp"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/fcp/src && ./start.sh &> $out
fi

if [[ $1 = *"rione"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/rione && ./local-start.sh &> $out
fi

if [[ $1 = *"yushan"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/yushan && ./start.sh &> $out
fi

if [[ $1 = *"kn2c"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/kn2c && ./startAll &> $out
fi

if [[ $1 = *"opu"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/opu && ./start.sh &> $out
fi

if [[ $1 = *"dml"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/dml && ./start.sh &> $out
fi

if [[ $1 = *"helios"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/helios && ./startAll &> $out
fi

if [[ $1 = *"itandroids"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/itandroids && ./startAll &> $out
fi
