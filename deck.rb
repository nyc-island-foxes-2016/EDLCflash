require_relative 'flashcard'

class Deck
  # include Parser
  attr_accessor :deck

  def initialize(info)
    @deck = []
    @deck << info.each { |card_hash| FlashCard.new(card_hash)}
  end

end
driver_code = [{ :term => "swag", :definition => "The action and effect of being too coll to handle"}, { :term => "fresh", :definition => "The effect of being too coll to handle"}]
my_deck = Deck.new(driver_code)
p my_deck
