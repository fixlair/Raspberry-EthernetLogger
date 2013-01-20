#!/bin/bash

PATH_TO_ELONET="../.."
LOGFILE=${PATH_TO_ELONET}/elonet/log/log-$NOW.log

# COMMON FUCTION FOR LOGGING
NOW=$(date +"%F")
NOWT=$(date +"%T")

function log () {
    echo "$NOWT - $@"
#     echo "$NOWT - $@" >> $LOGFILE
}
