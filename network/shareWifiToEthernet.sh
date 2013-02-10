#!/bin/bash


echo -e "\e[34m:: \e[97mInterface up..."
ifconfig eth0 up
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

echo -e "\e[34m:: \e[97mInterface IP..."
ifconfig eth0 192.168.7.1
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

echo -e "\e[34m:: \e[97mIP forwarding..."
echo "1" > /proc/sys/net/ipv4/ip_forward
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

iptables -t nat -A POSTROUTING -o wlan0 -s 192.168.7.0/24 -j MASQUERADE

echo -e "\e[97m"
