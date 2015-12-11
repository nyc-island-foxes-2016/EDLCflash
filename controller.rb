require_relative 'deck'
require_relative 'card_parser'
require_relative 'flashcard'
require 'CSV'

class Controller
  include Parsable

  def initialize
    @flashcard_deck = Deck.new
    cards = List_parser("flashcard.txt")
    cards << list_parser("flashcard.txt")


  end






 def run_interface

 end

  # def remove_correct
  #   if flashcard.correct == true
  #     delete_at(deck[flashcardindex])
  # end
 # def get_answer

 #  end



end

p flashcard_deck = Deck.new(Parsable.list_parser("flashcard.csv"))
