class View
  def introduction
  puts "Welcome to the EDLC flashcard App! We hope you learn something today!"
  end

  def user_interface
    puts "Would you like to go over your flashcards? (y/n)"
  end

  def stop_playing
    puts "Are you going to procastinate and stop playing? (y/n)"
    puts "Really?"
    puts "But are you really really sure?"
  end

  def correct_answer
    puts "You got it! What a genius!!! (single clap../) Would you like to continue (y/n)"
  end

  def wrong_answer
    puts ":( oh no! You were wrong. Would you like to guess again? (y/n)"
  end

  def clear_cards
    puts "Would you like to clear all your flash cards? (y/n) \n You HAVE to know all this stuff by now."
  end
  def get_input
    gets.chomp
  end
end

