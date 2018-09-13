#! /bin/bash

set -e

if [[ -z $PROXY_PORT ]]; then
	echo "enviroment param PROXY_PORT is needed!"
	exit 1
fi
sed -i "s/PROXY_PORT/${PROXY_PORT}/g" /privoxy/privoxy_cfg.conf

if [[ $SOCKS_IP_PORT ]]; then
	sed -i "s/SOCKS_IP_PORT/${SOCKS_IP_PORT}/g" /privoxy/privoxy_cfg.conf
else
    echo "enviroment param PROXY_IP_PORT is needed!"
    exit 2
fi

privoxy --no-daemon /privoxy/privoxy_cfg.conf
