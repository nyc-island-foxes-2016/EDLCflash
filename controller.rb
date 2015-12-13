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
    # @new_deck.add_flashcards(parse_from_txt('source_cards.txt'))
    @view = View.new
    run_interface
  end

  def run_interface
    @view.introduction
    @view.user_interface
    until @view.get_input == "quit"
      case @view.get_input
      when "yes"
        #random_card = @new_deck.flashcards[rand(0..@new_deck.flashcards.length)]
        random_card = rand(0..@new_deck.flashcards.length)
        @view.question(@new_deck.flashcards, random_card)
        until @view.get_input == "#{@new_deck.flashcards[random_card].term}"
          @view.wrong_answer
        end
        @view.correct_answer
        # @new_deck.flashcards.guess_correct(deck_index)
      when "continue"
        # random_card = @new_deck.flashcards[rand(0..new_deck.flashcards.length)]
         random_card = rand(0..@new_deck.flashcards.length)
        @view.question(@new_deck.flashcards, random_card)
        until @view.get_input == "#{@new_deck.flashcards[random_card].term}"
          @view.wrong_answer
        end
        @view.correct_answer
        # @new_deck.flashcards.guess_correct(deck_index)
        @view.get_input
      end
    end
    @view.stop_playing
    @view.goodbye
    end
end
