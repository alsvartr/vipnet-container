#!/bin/bash

KEY_FILE="/tmp/key.dst"
VIPNET="/usr/bin/vipnetclient"

echo "checking installed keys"
no_keys=`${VIPNET} info | grep -c "Keys have not been installed or verification failed"`
pkill -9 vipnetclient

if [ "$no_keys" -gt 0 ]; then
	echo "no keys installed"

	if [ ! -f ${KEY_FILE} ]; then
    echo "${KEY_FILE} empty, mount it from host and then run again"
		exit 1
	else
		echo "trying to install key from ${KEY_FILE}"
		${VIPNET} installkeys ${KEY_FILE} --no-start --no-autostart
		exit 0
	fi

else
	echo "keys found, starting VipNet Client"
	${VIPNET} --no-background start 2>&1
fi
