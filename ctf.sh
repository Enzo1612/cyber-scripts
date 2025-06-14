#!/bin/bash
if [ "$#" -ne 1 ]; then 
	printf 'ERROR! Usage: ctf <box-name>' >&2 
	exit 1 
fi
boxname=$1
mkdir -p /home/$USER/Desktop/htb/boxes/$boxname/{enum,files,findings}
