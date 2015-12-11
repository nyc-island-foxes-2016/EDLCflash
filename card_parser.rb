require_relative

module Parsable

def parser(csv_file)
  def list_parser
    read_csv = CSV.read(csv_file,:headers=>true, :header_converters=>:symbol)
    read_csv.map{|row| FlashCard.new(row.to_hash)}
  end

end

