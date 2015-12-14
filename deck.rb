require_relative 'flashcard'
require_relative 'card_parser'

class Deck
  attr_accessor :deck, :flashcards

  include Parsable

  def initialize(flashcards)
    @flashcards = flashcards
  end

  def clear_deck
    self.deck.clear
  end
end
