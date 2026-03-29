#!/bin/bash
###############################################
# Welcome to my first shell scripting project.
#
# Version v1
#
# Author: Ravindranath Singh
#
# Date: 29/03/2026
# #############################################
#
 set -x #debug
 set -e #exit if any fails
 set -o pipefail

 echo "Hello! Hope you are doing good."
 echo "Let's get started."
 
 echo "This is the overall CPU, memory and disk utilization report"
 top -b -n 1

 echo "This is memory usage"
 free -h
 
 echo "This is disk utilization"
 df -h

 echo "This checks all of the currently running processes"
 ps -ef
 
 echo "Now we can filter out a specific process"
 ps -ef | grep "vagrant"

 echo "Now lets say we just want the process IDs of a specific running process"
 ps -ef | grep "vagrant" | awk -F" " '{print $2}';

 echo "This gives number of processors we have"
 nproc

 echo "This shows the IO stats"
 iostat

 echo "This shows the VM stats"
 vmstat

 echo "This here are the 10 bottom log events from syslog"
 sudo tail -n 10 /var/log/syslog

 echo "This here are the 10 top log events from syslog"
 sudo head -n 10 /var/log/syslog

 echo "Live log viewing of system logs"
 #sudo timeout 10 journalctl -f

 echo "Ping google.com 4 times"
 ping -c 4 google.com

 echo "Check google.com information to troubleshoot issues"
 dig google.com

 echo "Check listening ports"
 ss -tulnp

 echo "Check current system ip"
 ip addr

 echo "Test website to know https status code"
 curl -I google.com

 echo "show nginx status"
 sudo systemctl status nginx


