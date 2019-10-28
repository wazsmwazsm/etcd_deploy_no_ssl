#!/bin/bash

echo "=====> etcd downloading..."
if [ ! -f "./etcd-v3.4.3-linux-amd64.tar.gz" ];then
    wget https://github.com/etcd-io/etcd/releases/download/v3.4.3/etcd-v3.4.3-linux-amd64.tar.gz \
        -O etcd-v3.4.3-linux-amd64.tar.gz  
fi

echo "=====> etcd downloaded"

