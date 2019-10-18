class Person
  attr_accessor :name, :age
  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age]
  end
end

hash = {name:"bharat",age:21}
p1 = Person.new(hash)


puts p1.name
