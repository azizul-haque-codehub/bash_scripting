#!/bin/bash

admin="ah_aziz"

# read -p "Enter your name! " username
 ######### If statements
# if [[ "${username}" == "${admin}" ]] then
#     echo "Yes , You are a admin user"
# else
#     echo "No you are not admin user"
# fi

# if [[ $EUID == 0 ]]; then
# echo "Please do not run as root"
# exit
# fi
######## Multiple conditions
# Check if the username provided is the admin
# if [[ "${username}" != "${admin}" ]] && [[ $EUID != 0 ]] ;
# then
# echo "You are not the admin or root user, but please be
# safe!"
# else
# echo "You are the admin user! This could be very
# destructive!"
# fi

###### elif conditional statement

if [[ ${#username} -lt 5 ]]; then
    echo "Your name is so short"
elif [[ ${#username} -gt 10 ]]; then
    echo "Your name is so long"
else 
    echo "Your name is so good"
fi

#### case statement
read -p "Enter the car name of Brand " car

case ${car} in 
    Tesla)
    echo  "${car}'s car factory is in the USA."
;;
BMW | Mercedes | Audi )
    echo "${car} factory is in Germeny"
    ;;
Toyota | Mazda | Mitsubishi | Subaru)
echo -n "${car}'s car factory is in Japan."
;;
*)
echo -n "${car} is an unknown car brand"

esac