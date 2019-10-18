class A
  attr_accessor :name,:age
  def initialize(name,age)
    @name = name
    @age =age
  end
  def say_hello
    puts "hello from class A"
  end
  def to_s
    "name = #{@name} ,  age = #{@age}"
  end
end


obj1 = A.new("Bharat",21)
obj2 = A.new("ram",26)
obj3 = A.new("Mahesh",11)
obj4 = A.new("Sonu",20)
obj5 = A.new("Harsh",30)



arr = []
arr.push(obj1)
arr.push(obj2)
arr.push(obj3)
arr.push(obj4)
arr.push(obj5)


arr.each do |obj|
  puts obj
end

# puts arr[0].name

# hash = [{name:"Bharat",age:21,city:"Neemuch"},{name:"Mohan",age:21,city:"Indore"}]

# hash.each do |value|
#   puts value[:name]
# end

