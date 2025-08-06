
users=("Alice" "Bob" "Charlie" "David")
# Print the first user
echo "First user: ${users[0]}"

# Print all users
echo "All users ${users[@]}"

#Get Last element
echo "Last Element is ${users[-1]}"

#Get length of array elements
echo "Number of users ${#users[@]}"

# Array Slicing

alphabet=("Abcd" "B" "C" "D")

# PRint entire array
echo "${alphabet[@]}"

# Print / access a single element
echo "${alphabet[0]}"
echo "${alphabet[2]}"

# print a range of elements
echo "${alphabet[@]:1:5}"


# String Slicing
text="Hello, World!"

# Syntax : {string:start:length}
echo "${text:7:5}"
 