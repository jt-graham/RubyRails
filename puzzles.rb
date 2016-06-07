# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
arr = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
def sumGreaterThan10(arr)
	puts arr.reduce(:+)
	return arr.reject { |i| i <= 10 }
end
puts sumGreaterThan10(arr), "\n"





# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
array = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
def puzzle2(arr)
	arr.shuffle!
	arr.each {|name| puts name}
	print arr.reject {|name| name.length < 6}
end
puts puzzle2(array), "\n"



# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message
arr = ('a'..'z').to_a.shuffle
def puzzle3(arr)
	puts arr.to_s
	puts "last letter: #{arr.last}"
	puts "first letter: #{arr.first}"
	puts "First letter is a vowel." if ['a','e','i','o','u'].include? arr.first
end
puts puzzle3(arr)




# Generate an array with 10 random numbers between 55-100.
def puzzle4
	arr=[]
	(0..9).each {|i| arr[i]=Random.rand(55..100)}
	puts arr
	print arr, "\n"
end
puzzle4



# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.
def puzzle5
	arr=[]
	(0..9).each {|i| arr[i]=Random.rand(55..100)}
	puts arr.sort
	puts "min value: #{arr.min}"
	puts "max value: #{arr.max},"
end
puzzle5



# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character
def puzzle6
	str = ""
	for i in 0..4
		str += (65+rand(26)).chr
	end
	print str, "\n"
end
puzzle6



# Generate an array with 10 random strings that are each 5 characters long
def puzzle7
arr=[]
	for i in 0..9
		str = ""
		for i in 0..4
			str += (65+rand(26)).chr
		end
		arr.push(str)
	end
	print arr, "\n"
end
puzzle7

