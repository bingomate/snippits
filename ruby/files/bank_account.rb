class Account
	attr_accessor :fullname, :pin, :balance
	def initialize(fullname, pin, balance)
		@fullname = fullname
		@pin = pin
		@balance = balance
	end

	def balance=(amount)
		@balance = amount
	end
end

def main_menu

	puts "Welecome to Ruby Bank. What would you like to do today?"
	puts "1: Create a New account"
	puts "2: Deposit money into your account"
	puts "3: Withdraw money from your account"
	

	option = gets.chomp

	case option
	when "1"
		create_account
	when "2"
		deposit
	when "3"
		withdraw
	else
		puts "That wasn't a valid choice"
	end
end
	
def create_account

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

$name = Account.new(username, pin, balance=0)
puts "Hello #{$name.fullname}. Your pin is #{$name.pin} and you have a #{$name.balance} balance"
main_menu
end	

def deposit
	puts "How much would you like to deposit today?"
	amount = gets.chomp
	$name.balance=(amount.to_i + $name.balance)
	puts "You've deposited #{amount} dollars"
	puts "Your new account balance is #{$name.balance}"
	main_menu
end

def withdraw
begin
	puts "How much money would you like to withdraw?"
	debit = gets.chomp

	if debit.to_i > $name.balance
		puts "You have insuficcient funds to withdraw that amount" 
	else
		$name.balance=($name.balance - debit.to_i)
		puts "You have withdrawn #{debit} dollars and your new account balance is #{$name.balance}"
	raise 
	end
rescue 
	retry if debit.to_i > $name.balance
	
	end
	main_menu
	
end


	
main_menu







