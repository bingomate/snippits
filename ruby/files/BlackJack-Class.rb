class Cards
	attr_accessor(:card, :suit, :value)
		def initialize(card, suit, value)
			@card = card
			@suit = suit
			@value = value
		end
end


def create_deck
	card = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']
	suit = ['S', 'H', 'D', 'C']
	value = [2,3,4,5,6,7,8,9,10,10,10,10,11]

	card.each do |i|

		spades = Cards.new(card[i], suit[0], value[i])

	end

	puts spades.card

end

create_deck