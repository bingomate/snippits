class Account
	attr_accessor :fullname, :pin, :balance
	def initialize(fullname, pin, balance = 0)
		@fullname = fullname
		@pin = pin
		@balance = balance
	end

	def balance=(amount)
		@balance = amount
	end



	def deposit
		puts "How much would you like to deposit today?"
		amount = gets.chomp
		puts "#{name.username}"
	end

	def withdraw(amount)
		if amount > @balance
			puts "You have insuficcient funds" 
		else
			puts "Your money has been deposted"
		end
	end
end

def main_menu

	puts "Welecome to Ruby Bank. What would you like to do today?"
	puts "1: Create a New account"
	puts "2: Deposit money into your account"
	puts "3: Withdraw money from your account"
	puts "4: Change your pin"

	option = gets.chomp

	case option
	when "1"
		puts "What is your name?"
	
		username = gets.chomp
		begin
		puts "What would you like your pin to be. It must be only 4 digits"

			pin = gets.chomp
			puts "Confirm your pin"
			pin_confirm = gets.chomp
			if pin != pin_confirm
				puts "Your pin numbers do not match"
			else
				nil
			end

			raise
		rescue 
			retry if pin != pin_confirm 
			
			end
		
		name = Account.new(username, pin, balance=0)
		puts "Hello #{name.fullname}. Your pin is #{name.pin} and you have a #{name.balance} balance"
		main_menu

	when "2"
		name.deposit
	when "3"
		name.withdraw
	when "4"
		name.change_pin
	else
		puts "That wasn't a valid choice"
	end

	
	


end
main_menu







