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