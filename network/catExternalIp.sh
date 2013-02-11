#! /bin/sh

echo -e "\e[34m:: \e[97mConnecting..."
IP=`wget -q -O - checkip.dyndns.org | sed -e 's/[^[:digit:]\|.]//g'`
echo -e "\e[1A\e[73C \e[34m[\e[97mDONE\e[34m]"

echo -e "\033[1A\e[34m:: \e[97mExternal IP address:  $IP \e[97m "
