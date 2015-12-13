require_relative 'view'
require_relative 'flashcard'
require_relative 'deck'
require_relative 'card_parser'
require 'pry'
class Controller
  include Parsable
  attr_reader :new_deck
  def initialize
    @new_deck = Deck.new(parse_from_txt('source_cards.txt'))
    @view = View.new
    @view.introduction
    @view.user_interface
    run_interface
  end

  def run_interface
    random_number = rand(0..@new_deck.flashcards.length)
    entry = @view.get_input
    if entry == 'yes'
      @view.question(@new_deck.flashcards, random_number)
      until @view.get_input == "#{@new_deck.flashcards[random_number].term}"
        @view.wrong_answer
      end
      @view.correct_answer
    end
    if entry == "quit"
      @view.stop_playing
      @view.goodbye
      return false
    else
      run_interface
    end
  end
end
