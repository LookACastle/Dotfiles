#!/bin/bash

# This script exists because of an IT department with less-than-stable 
# internet, that blocks ICMP requests. It replaces pinging google
# with a curl request, so I can see when the connection is back online.

until curl google.com -f
do
  sleep 5
done
