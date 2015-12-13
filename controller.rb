# require_relative 'parser'
require_relative 'view'
class Controller
  #include Parser

  def initialize
    @view = View.new()
    @deck = Deck.new()
    run_interface
  end

  def run_interface
    @view.introduction
    @view.user_interface
    case @view.get_input
     when "quit"
      @view.stop_playing
      when "yes"
        @deck.deck.shuffle
        @view.question
        if "#{@deck[0][:definition]}"
          @view.correct_answer
        else @view.wrong_answer
          if "again"
            @view.question
          elsif "move"
            @deck.shuffle
            @view.question
          else @view.stop_playing
          end
        end
      when "clear"
        @view.clear_cards
        @deck.clear_deck
        @view.goodbye
      end
    end
  end



      # if "again"
      #   @view.question
      # elsif "move"
      #   @deck.shuffle
      #   @view.question
      # else @view.stop_playing
