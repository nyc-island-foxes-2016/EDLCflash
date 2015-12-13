require_relative 'flashcard'
require_relative 'card_parser'

class Deck
  attr_accessor :deck, :flashcards

  include Parsable

  def initialize(flashcards)

    @flashcards = flashcards
  end

  # def add_flashcards(flashcard_objects)
  #   @flashcards << flashcard_objects
  # end

  def clear_deck
    self.deck.clear
  end

  #  def guess_correct(index)
  #   @deck[index][term].correct = true
  #   @deck[index][term] = "#{@deck[index][term]} (correct)"
  # end
end
