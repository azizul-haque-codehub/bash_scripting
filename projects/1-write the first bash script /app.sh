#!/bin/bash

# script that returns the current server status

server_name=$(hostname)
#By using $() we tell bash to actually interpret the command and then assign the value to our variable.
echo $server_name

function memory_check() {
    echo ""
    echo "The current memory usage on ${server_name} is: "
    free -h
    echo ""
}

function disk_check(){
    echo ""
    echo "The current disk usage on ${server_name} is: "
    echo ""
}

function cpu_check(){
    echo ""
    echo "CPU load on ${server_name} is: "
    echo ""
    uptime
    echo ""
}
 
function kernel_check(){
    echo ""
    echo "The current kernel version usage on ${server_name} is: "
    echo ""
    uname -r
    echo ""
}
 
 function all_checks(){
    memory_check
    cpu_check
    disk_check
    kernel_check
 }
 all_checks