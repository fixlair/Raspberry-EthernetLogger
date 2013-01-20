#!/bin/bash

. ./common.sh

CONFIGFILE=${PATH_TO_ELONET}/elonet/ip_configuration.txt

if [ ! -f $CONFIGFILE  ]; then
    log "ERROR - $CONFIGFILE : does not exists"
    exit 1
elif [ ! -r $CONFIGFILE  ]; then
    log "ERROR - $CONFIGFILE : can not be read"
    exit 1
else
    log "OK - IP Parameters will be read from $CONFIGFILE"
fi

i=0
cat $CONFIGFILE | while read line; do
    if [[ "$line" =~ ^[^#]*= ]]; then
	name=`echo $line | cut -d "=" -f 1`
	value=`echo $line | cut -d "=" -f 2`
	echo $name - $value
        case "$name" in
            address)
	        ADDRESS = $value
                ;;
            netmask)
                NETMASK = $value
                ;;
            gateway)
                GATEWAY = $value
                ;;
            *)
                log "ERROR - Unknow parameter in IP config file"
                exit 1
         esac
    fi
done

log "OK - IP config file read, parameters are : Address $ADDRESS - Netmask $NETMASK - Gateway $GATEWAY"
