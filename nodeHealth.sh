#!/bin/bash

##############################################
# Author: Aman Chandra
# Date: 22/08/2023
# Purpose: To check the health of the node
# This scripts outputs the health of the node
# Version: 1.0.0
##############################################

# set the script in the debug mode
set -x

# exit the script if any command fails
set -e

# exit the script if any variable is not set
set -o pipefail

# amount of free disk space on each mounted disk
# disk filesystem usage
df -h

# free memory available
free -m

# number of processes
nproc

# check which processes are running
ps -ef

# Pipe ("|") commands sends the output of one command to another command
# check the process running on docker
ps -ef | grep docker

# get the process id of docker
# $1 is the first column of the output of the previous command
ps -ef | grep docker  | awk '{print $2}'

# external API call through curl
curl www.google.com

# find a file
sudo find / -name "nodeHealth.sh"

# kill a process
sudo kill -9 <pid>
