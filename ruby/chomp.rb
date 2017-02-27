
puts 'Hello, what\'s your first name?'
       firstname  = gets.chomp
puts 'What is your last name?'
  	lastname = gets.chomp
puts 'What is your middle name?'
	middlename = gets.chomp
puts 'Hello ' + firstname + ' ' + middlename + ' ' + lastname + '!'

puts 'What is your favorite number?'
	fav = gets.chomp

newnum = fav.to_i + 1

puts 'Your new favorite number is,' + newnum.to_s 


       
