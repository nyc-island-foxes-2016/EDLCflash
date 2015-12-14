require_relative 'flashcard'
require 'pry'
module Parsable

 def parse_from_txt(file_path)
    flashcard_objects = []
    txt_lines = File.read(file_path).split(/\n/)
    txt_lines.each_slice(2) do |line|
      flashcard_objects << FlashCard.new({definition: line[0], term: line[1]})
    end
    flashcard_objects
  end
end
