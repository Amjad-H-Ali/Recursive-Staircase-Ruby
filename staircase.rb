p "Staircase!"

# Function to take in two Parameters
# n represents the amount of steps on the stair case 
# storage is in array that stores results to prevent redundant computation (Defualt value is array)
# Function is recursive: Much like Fibbonacci sequence
# Returns number of ways to reach top of staircase
def stair_case n, storage = []
	# Exit code
	# When steps equals 0-1, only one way to reach top
	if n <= 1
		return 1
	end
	
	# If we found answer from before, no need to repeat process.
	if storage[n]
		return storage[n]
	end	

	# Answer Ex: if steps equals 5, answer is answer to 4 steps + answer to 3 steps.
	# So use recursion.	
	result = stair_case(n - 1, storage) + stair_case(n - 2, storage)

	# Store answer into array before returning
	storage[n] = result

	result
end	


p stair_case 0 #1

p stair_case 1 #1

p stair_case 2 #2

p stair_case 3 #3

p stair_case 4 #5

p stair_case 5 #8

p stair_case 6 #13

p stair_case 7 #21

p stair_case 8 #34
