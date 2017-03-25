
def shuffle_cards
	card = [2,3,4,5,6,7,8,9,10,'J', 'Q', 'K', 'A']
	suit = ['S', 'H', 'D', 'C']
	value = [2,3,4,5,6,7,8,9,10,10,10,10,11]

	deck = []

	card.each do |cards|
		suit.each do |suits|
			value.each do |values|
				deck.push(cards, suits, values)
			end
		end
	end
	
	

	puts deck

	
end


shuffle_cards
=begin
def deal_cards
	dealer = Array.new
	player = Array.new
	dealer.push("#{shuffle_cards[0]}")
	player.push("#{shuffle_cards[1]}")
	dealer.push("#{shuffle_cards[2]}")
	player.push("#{shuffle_cards[3]}")

	
	puts "Dealer hand is " + dealer.to_s 
	puts "Player hand is " + player.to_s

	

	
end

deal_cards
=end
















































=begin
def create_cards
	card_value = [2,3,4,5,6,7,8,9,10]
	face_card_value = [10,11]
	face_card_symbol = ['J', 'Q', 'K', 'A']
	card_symbol = ['S', 'H', 'C', 'D']
	cards = Hash.new
	# Add numbered cards into cards hash
	for x in card_value
		cards.store("#{x}", "#{x}" + "#{card_symbol[0..3]}")
	end
	
# Add face cards Jack through Kind to cards hash
	for x in face_card_symbol
		cards.store("#{x}", "#{x}" + "#{card_symbol[0..3]}")
	end
	
	puts cards{2[1]}
end

create_cards

=end