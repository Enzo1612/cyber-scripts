#!/bin/bash

# Verify the parameters
if [ "$#" -ne 1 ]; then
	printf 'ERROR! Usage: nmapq <target-ip>\n' >&2
	exit 1
fi
ip=$1
filename="quick-scan-$ip.txt"

nmap -sC -sV  -oN "$filename" "$ip" -vv
