class FlashCard
  attr_reader :term , :definition
  def initialize(args = {})
    @correct = false
    @side1 =  args[:term]
    @side2 =  args[:definition]
  end

end


