#array declaration
users=("Alice" "Bob" "David" "Avid" "Bobby")

# Print entire Array elements
echo "Entire elements ${users[@]}"

# Print single element
echo "single element ${users[0]}"

# Print index based element
 echo "Second element is ${users[1]}"

# Access Range of array elements
echo "Print second element to 4th ${users[@]:1:3}"


#String slicing

institute="Farnam Street"

# syntax : {string:start_index:length}
echo "7 index element is ${institute:7:1}"
echo "last word is ${institute:7:6}"




