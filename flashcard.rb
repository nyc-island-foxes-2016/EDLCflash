class FlashCard
  attr_reader :term , :definition
  # attr_writer :correct

  def initialize(args = {})
    @correct = false
    @term =  args[:term]
    @definition =  args[:definition]
  end

end


