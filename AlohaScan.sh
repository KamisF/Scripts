#! /bin/bash

#This script is designed to find host with port 5505

echo "Enter the First IP address : "
read FisrtIP

echo "Enter the last octet of the last IP address : "
read LastOctet

echo "Enter the First port number you want to scan for : "
read port1

echo "Enter the Last port number you want to scan for : "
read port2

nmap -sT -PN $FisrtIP-$LastOctet -p $port1-$port2 > /dev/null -oG AlohaScan

cat AlohaScan | grep open > AlohaScan2

cat AlohaScan2
