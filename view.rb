class View
  def introduction
    puts "Welcome to the Inner Critic Flashcard App! We hope you learn something today, but if not, we really don't care!"
  end

  def user_interface
    puts "Would you like to go over your flashcards? (yes/no)"
  end

  def stop_playing
    puts "Are you going to procastinate and stop playing? (quit)"
    puts "Really?"
    puts "But are you really really sure?"
  end

  def question
    puts "What is (a)#{@deck[0][:term]}?"
  end

  def correct_answer
    puts "You got it! What a genius!!! (single clap../) Would you like to continue? (continue)"
  end

  def wrong_answer
    puts ":( oh no! You were wrong. Would you like to guess again? (again) Or move on? (move)"
  end

  def clear_cards
    puts "Would you like to clear all your flash cards? (clear) \n You HAVE to know all this stuff by now."
  end

  def goodbye
    puts "Sheesh. Didn't expect you to give up THAT easily."
  end

  def get_input
    gets.chomp.downcase
  end
end


