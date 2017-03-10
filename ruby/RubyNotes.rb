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

	string.downcase # Converts all characters into lowercase
	string.upcase # Converts all characters into downcase
	string.swapcase # Converts all characters into the opposite case they're currently in



