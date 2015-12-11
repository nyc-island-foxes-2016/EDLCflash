require_relative 'parser'
class Controller
  include Parser

  def initialize
    @view = View.new()
  end

  def run_interface
    @view.introduction
    @view.user_interface
    @view.get_input
    until @view.get_input == "Quit"

  end

  # def remove_correct
  #   if flashcard.correct == true
  #     delete_at(deck[flashcardindex])
  # end

end

