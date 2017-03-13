Objects:

# You can call .methods on an object to get that objects methods

	Example: puts.methods

=> [:&, :^, :|, :===, :inspect, :to_a, :to_s, :to_i, :to_f, :nil?, :to_h, :to_r, :rationalize, :to_c, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :method, :public_method, :singleton_method, :is_a?, :extend, :define_singleton_method, :to_enum, :enum_for, :<=>, :=~, :!~, :eql?, :respond_to?, :freeze, :display, :object_id, :send, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]

Strings:

# Single quotes are for literal interpretation. Everything in the string will be represented when stored in a variable or outputed 

# Double quotes are mainly used for string interpolation. In other words, allowing ruby code to be evaluated within a string

	Example: something.each do |output|
			puts "#{output}"
		 end

#String Methods

	string.downcase 		# Converts all characters into lowercase
	string.upcase 			# Converts all characters into downcase
	string.swapcase 		# Converts all characters into the opposite case they're currently in
	string.include? 'expression' 	# Matches expression within string
	string.end_with? 'expression' 	# Checks if string ends with the expression
	string.index 'expression'	# Returns index of character in expression
	string.split('expression')	# Splits string on expression
	string.concat("expression")	# Combines string with expression #Using + doesn't modify the original string but creates a brand new string
				        # Using << to the original string simply appends the new string to the original. Helping with memory


	string.sub('$a','$b')		# Substitute $a with $b (First occurance only)
	string.gsub('$a','$b') 		# Substitute $a with $b (Every occurance) 	
	string.match(/ * /)		# Use regex to match between / /
	

#if..else methods


	# if statements

	Example:

		def eval_number(number)
			if number > 6
				puts "#{number} is greater than 6"

			elsif number < 6 
				puts "#{number} is less than 6"

			else
				puts "#{number} is equal to 6"
		end

	# Unless statements

	Example:

		def eval_number(number)
			unless number >=6
				puts "#{number} is not greater than 6"

		end





	# ternary operator		# ? & : Can be used to represent then and else

	Example:

		def check_number(number)
			number > 0 ? "#{number} is positive" : "#{number} is negative"
		end


## Arrays

	# Creating Arrays
	
	Example: 
		arr = [] 
		arr = Array.new

# Adding to Arrays

	# array.push("expression")

	Example: 

		arr = Array.new
		arr.push('1','2','3','4','5')
		puts arr
		#output = [1,2,3,4,5]


	Example:

		arr << "6"


# Transforming Arrays

	# Map allows you to take an array and change the array

	Example:

		[1,2,3,4,5].map { |i| i * 3 }
		# Takes the array and multiplies every value by 3

	# Select allow an array to be transformed by taking elements in an array and testing them with a condition in a block


	Example: 

		[1,2,3,4,5].select { |number| number % 2 == 0 }


# Looping Arrays 

	# Using for loops - Add first_array values to second_array if number from first array are less than or equal to 3

	Example: 

		first_array = [1,2,3,4,5,6]
		second_array = []

		for number in first_array
			second_array << first_array if number <= 3
		end

	# Looping with each - Add first_array values to second_array if number from first array are less than or equal to 3

	Example: 

		first_array = [1,2,3,4,5,6]
		second_array = []

		first_array.each do |number|
			second_array << first_array if number <= 3
		end


# Looping hashes - Works the same was as iterating arrays except both the key&value are stored as variables

	Example: 

		sports_rank = {"Basketball" => 1, "Baseball" => 2, "Football" => 3, "Hockey" => 4}
		sports_rank.each do | sport, rank |
			puts "#{sport} is #{rank}"

		end


		



		







		




			



