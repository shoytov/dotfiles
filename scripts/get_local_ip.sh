#!/bin/bash

local_ip=$(ifconfig wlan0 | grep -Eo '(addr:)?([0-9]*\.){3}[0-9]*' | head -n 1)

echo "$local_ip"
