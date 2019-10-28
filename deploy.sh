#!/bin/bash

echo "=====> copy config file..."
mkdir -p /usr/local/etcd/bin
mkdir -p /usr/local/etcd/conf
mkdir -p /var/lib/etcd/
chown -R root:root /usr/local/etcd/
chown -R root:root /var/lib/etcd/

cp etcd.conf /usr/local/etcd/conf
cp etcd-v3.4.3-linux-amd64/etcd /usr/local/etcd/bin
cp etcd-v3.4.3-linux-amd64/etcdctl /usr/local/etcd/bin
echo "=====> config file copied"

echo "=====> create service..."
cp etcd.service /lib/systemd/system
systemctl daemon-reload
systemctl enable etcd
systemctl start etcd
echo "=====> service created..."
