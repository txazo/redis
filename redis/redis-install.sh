#!/bin/bash
#
# Install Redis

wget http://download.redis.io/releases/redis-3.2.0.tar.gz
tar -zxvf redis-3.2.0.tar.gz
cd redis-3.2.0
make

rm -rf /usr/local/redis
mkdir -p /usr/local/redis/bin /usr/local/redis/etc

cp redis.conf /usr/local/redis/etc
cp src/redis-server src/redis-cli src/redis-benchmark /usr/local/redis/bin

cd ..
rm -rf redis-3.2.0*
