class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end

	def change(n, a)
		self.name = n
		self.age = a
	end

	def show_info
		puts "#{name} is #{age}"

	end
end

	p = Person.new("Justin", 34)
	p.change("Tom", 28)
	p.show_info