#!/bin/bash
FILENAME=../../elonet/ip_configuration.txt

#read $FILENAME
cat $FILENAME | while read line ; do
    firstchar=${line:0:1}
    if [!$firstchar=="#"]
    then
        echo $line;
    fi
done  
