def language()
	languages = ['English', 'German', 'Ruby']

	languages.each do |lang|
		puts 'I love ' +lang+ '!'
		puts 'Dont you?'
	end

	puts 'And lets hear it for python!'
end

def threetimes()
	3.times do 
		puts 'Hip-hip-hip'
	end

end

def food()

	foods = ['apple', 'orange', 'apple']

	puts foods
	puts
	puts foods.to_s
	puts
	puts foods.join(',')
	puts
	puts foods.join('   :)   ') + '  8)'

	200.times do
		puts[]
	end
end

def pushpop()
	favorites = []
	favorites.push 'hello'
	favorites.push 'hello2'

	puts favorites[0]
	puts favorites.last
	puts favorites.length

	puts favorites.pop
	puts favorites
	puts favorites.length

end

