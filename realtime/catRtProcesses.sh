#!/bin/bash

# Lists the top 20 rtprio processes:
echo -e "\e[34m:: \e[97mTop RT processes:\e[97m"
ps -eLo rtprio,cmd | sort -rfn | head -n 20
