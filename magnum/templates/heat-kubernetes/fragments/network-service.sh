#!/bin/sh

. /etc/sysconfig/heat-params

if [ "$NETWORK_DRIVER" == "flannel" ]; then

echo "activating service flanneld"
systemctl enable flanneld
systemctl --no-block start flanneld

fi
