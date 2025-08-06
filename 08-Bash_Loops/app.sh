users=("Aziz" "Meizan" "Mohim" "Habib") #array

for user in ${users[@]}
do  
    echo "${user}"
done

users="devdo jobobby tony" #string
for user in ${users}
do
echo "${user}"
done

# for loop to print number in range
for num in {1..100}
do 
     echo ${num}
done

#while loops
counter=1
while [[ ${counter} -le 10 ]]
do
    echo ${counter}
    ((counter++))
done


# while loop project

# read -p "What is your name? " name

while [[ -z ${name} ]];
do 
    echo  "Your name can not be blank. Please enter a valid
name!"
read -p "Pls Enter your name" name
done
echo "Hi there ${name}"

#until loop
# The difference between until and while loops is that the until loop will run the commands within the loop until the condition becomes true. Means that first condition be a false but until run until the condition be true
count=1
until [[ $count -gt 10 ]]
do
echo $count
((count++))
done

# continue keyword
#continue tells your bash script to stop the current iteration of the loop and start the next iteration.
# my explanation : continue use kora hoi loop er vitore jodi kunu condition false hoi kintu ami chai je ei condition ta skip kore porer iteration gulu jeno complete hoi ,mane condition maddome loop er vitore kichu skip kora
for i in 1 2 3 4 5
do

if [[ $i -eq 2 ]]
then
echo "skipping number 2"
continue
fi

echo "i is equal to $i"
done
#break keywor
#break tells your bash script to end the loop straight away
num=1
while [[ $num -lt 10 ]]
do
if [[ $num -eq 5 ]]
then
break
fi
echo "${num}"
((num++))
done
echo "Loop completed"

for (( a = 1; a < 10; a++ ))
do
    echo "outer loop: $a"
        for (( b = 1; b < 100; b++ ))
        do
                if [[ $b -gt 5 ]]
                    then
                    break 2
                fi
            echo "Inner loop: $b "
        done
    
done