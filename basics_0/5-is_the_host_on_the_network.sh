#!/bin/bash

# Check if the user passed an argument.
if [[ $# -eq 0 ]]; then
  echo "Usage: 5-is_the_host_on_the_network {IP_ADDRESS}"
    exit 1
    fi

# Get the IP address from the argument.
    IP_ADDRESS=$1

# Ping the IP address 5 times.
    ping -c 5 $IP_ADDRESS

# Check the exit status of the ping command.
    if [[ $? -eq 0 ]]; then
      echo "Host $IP_ADDRESS is reachable."
      else
        echo "Host $IP_ADDRESS is not reachable."
	fi
