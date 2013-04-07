#!/bin/bash


echo -e "\e[34m:: \e[97mInterface up..."
ifconfig eth0 up
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

echo -e "\e[34m:: \e[97mInterface IP..."
ifconfig eth0 192.168.2.1
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

echo -e "\e[34m:: \e[97mIP forwarding..."
echo "1" > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A POSTROUTING -o wlan0 -s 192.168.2.0/24 -j MASQUERADE
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

# get current DNS server from /etc/resolv.conf
DNS=`sed -n '4p' /etc/resolv.conf`
DNSIP="${DNS:11}"

echo -e "\e[34m:: \e[97mEg IP config for client:
   Static IP: 192.168.2.2
   Gateway  : 192.168.2.1
   DNS      : $DNSIP"
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"
echo -e "\e[97m"
