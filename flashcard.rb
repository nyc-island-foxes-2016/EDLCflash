class FlashCard
  attr_reader :side1 , :side2
  def initialize(args = {})
    @correct = false
    @side1 =  args[]
    @side2 =  args[]
  end

  # def correct?
  # @correct = true
  # end



end


  # def parse_people_objects_from_file
  #   people_array = []
  #   CSV.foreach("people.csv", :headers => true) do |row|
  #     people_array.push(Person.new(row[0],row[1],row[2],row[3],row[4]))
  #   end
