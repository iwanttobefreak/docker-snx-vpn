#!/bin/bash
server=$SNX_SERVER
user=$SNX_USER
password=$SNX_PASSWORD

/usr/bin/expect <<EOF
spawn snx -s $server -u $user
expect "*?assword:"
send "$password\r"
expect "*Do you accept*"
send "y\r"
expect "SNX - connected."
interact
EOF



#iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
#iptables -A FORWARD -i tunsnx -j ACCEPT

#read a
