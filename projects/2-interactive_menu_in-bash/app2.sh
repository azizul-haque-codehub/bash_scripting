#!/bin/bash

#server_name=$(hostname)
server_name=$(hostname)


memory_check (){
    echo ""
    echo "Memory usages on $server_name is: "
    free -h
    echo ""
}

cpu_check (){
    echo ""
    echo "CPU load on $server_name is: "
     uptime
    echo ""
}

kernel_check(){
    echo "Kernel version on $server_name is: "
    uname -r
    echo ""
}

all_checks(){
    memory_check;
    cpu_check;
    kernel_check;
}

menu(){
read -p "Check list is below : 
1)Memory check
2)CPU load
3)kernel check 
4)All checks
0)exit
Your Option : " i

case $i in 
1) memory_check; menu;;
2) cpu_check; menu;;
3)kernel_check; menu;;
4)all_checks; menu;;
0) exit 0;;
esac
}

menu