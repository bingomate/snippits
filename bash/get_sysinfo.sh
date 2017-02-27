#!/bin/bash
rm hostinfo.txt

hosts='debian-0 puppet-master'

for host in $hosts
do
	ssh user@$host "
		echo ''
		echo "Hostname"
		echo ====================
		hostname
		echo ''
		echo "Version"
		echo ====================
		cat /proc/version
		echo ''



		" >> hostinfo.txt
    done