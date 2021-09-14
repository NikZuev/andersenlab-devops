#!/bin/bash

# run netstat
echo "run netstat:"
netstat_output=$(netstat -tunapl | awk '/firefox/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort | tail -n5 | grep -oP '(\d+\.){3}\d+' | while read IP ; do whois $IP | grep 'Organization' ; done)
echo $netstat_output