#!/bin/sh

ls /etc/etcd/etcd.conf

# Execute the commands passed to this script
exec "$@"
