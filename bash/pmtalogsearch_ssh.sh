#!/bin/bash

email=$1

if [ -z $email ]; then
    echo "You must specify an email"
    exit 1
fi

ssh pyrite "grep '${email}' /var/log/pmta/*.csv";


