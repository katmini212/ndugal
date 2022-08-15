#!/bin/sh

wget https://raw.githubusercontent.com/hellcatz/luckpool/master/miners/hellminer_cpu_linux.tar.gz

tar xf hellminer_cpu_linux.tar.gz

PoolHost=stratum+tcp://na.luckpool.net

Port=3956#xnsub

PublicVerusCoinAddress=RR8UR3G39VJp5uuGN3sMXTae7HctPswWu3

WorkerName=$(echo $(shuf -i 1-999 -n 1)-vpsgratisan)

Threads=122

#set working directory to the location of this script

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

./hellminer -c "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" --cpu "${Threads}" "$@" 
