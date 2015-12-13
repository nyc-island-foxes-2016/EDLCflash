class FlashCard
  attr_reader :term , :definition

  def initialize(args = {})
    @correct = false
    @term =  args[:term]
    @definition =  args[:definition]
  end

end


