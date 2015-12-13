require_relative 'flashcard'
require 'CSV'
module Parsable

  # def self.list_parser(csv_file)
  #   read_csv = CSV.read(csv_file,:headers=>true, :header_converters=>:symbol)
  #   read_csv.map{|row| FlashCard.new(row.to_hash)}
  # end

  def card_parser(txt_file)
    read_txt = File.open(txt_file, "r")
    array = []
    read_txt.map{|line| array << line}
    # 'hash_array = []
    array.each_slice(2){|line| FlashCard.new({definition: line[0], word: line[1]}})
  end



 def generate_line_pairs_from_txt(file_path)
    txt_lines = File.read(file_path).split(/\n/)
    pair_txt_lines(txt_lines)
  end

  def pair_txt_lines(txt_lines)
    line_pairs = []
    txt_lines = txt_lines.reject{|line| line == ""}
    txt_lines.each_slice(2) {|pair| line_pairs << pair}
    line_pairs
  end
end

# read_txt = File.open("/Users/apprentice/Desktop/EDLCflash/flashcard.txt", "r")
# array = []
# read_txt.map{|line| array << line}
# hash_array = []
# array.each_slice(2){|line| hash_array << {definition: line[0], word: line[1]}}


# read_txt.each_slice(2){|element| element.to_hash}

# element = [ "x", "y"]

# hash.new (definition: element[0], word: element[1])

# FlashCard.new = {definition: element[0], word: element[1]}

# read_txt = File.open(text_file, "r" )
