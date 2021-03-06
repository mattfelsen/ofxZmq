#!/bin/bash

if [ ! -d zmq ]; then
	mkdir zmq
fi

ZMQ=zeromq-4.0.4
ZMQ_DIR=$(cd $(dirname .) && pwd)/zmq

mkdir temp

pushd temp
curl -O http://download.zeromq.org/$ZMQ.tar.gz
tar xvzf $ZMQ.tar.gz

pushd $ZMQ
./configure
cp -R include "$ZMQ_DIR"
cp -R src "$ZMQ_DIR"
cp COPYING "$ZMQ_DIR"
popd

git clone https://github.com/zeromq/cppzmq.git
pushd cppzmq
cp zmq.hpp "$ZMQ_DIR/include"
popd

popd

rm -rf temp
