require_relative 'flashcard'
require_relative 'card_parser'
class Deck
  attr_accessor :deck
  include Parsable
  def initialize(cards)
    @deck = []
    @deck = cards.each { |card_hash| FlashCard.new(card_hash)}
  end

  def clear_deck
    self.deck.clear
  end
end
driver_code = [{ :term => "swag", :definition => "The action and effect of being too coll to handle"}, { :term => "fresh", :definition => "The effect of being too cool to handle"}]
my_deck = Deck.new(driver_code)
x = my_deck.deck.shuffle
x[0][:term]
p x[0][:definition]
p my_deck
