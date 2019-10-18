require_relative "./support_module"


class A
  include M1
  attr_accessor :name, :age, :array
  def initialize(name,age)
    @name = name
    @age = age
    @array = [1,2,3,4,5]
  end
  def show_details
    puts "name = #{@name} and age = #{@age}"
  end
  def call
  add_all

  end


end

obj = A.new("bharat",21)
obj.add_all

# def test
#   puts "calling blocks....."
#   yield
# end

# test do puts "hii i am block" end


# # module Test
#   C = 100
#   def name#Always create a method in module Modulename.methodname
#     puts "my name is bharat rathor "
#   end
#   def age
#     puts "your age is 21"
#   end

#   def add(a,b)
#     return a+b
#   end
# end

# class Person
#   include Test

# end

# o1 = Person.new
# o1.age

# puts Test::C
# Test.name
# Test.age
# puts Test.add 4,5

# ary = ["name",54,87.98,"string"]

# ary.each do |i|
#   puts "#{i}"

# end
# hsh = data = {"name"=>"bharat","age"=>21}
# for name,value in data do
#   puts "#{name}=#{value}"
# end


#required keyword in ruby

# module Test
#   def name
#     puts"my name is bharat rathor"
#   end
# end


# class Myclass
#   extend Test
#   def func1
#     puts "this is #{self} class"
#   end
# end

# self.name
# # ob.name

# hsh = {name:"bharat",age:21,dept:"engineering"}

# blocks :- the name of the block should be same as the name of the method
#       blocks could be only called within a methods using a yiels keyword
#
# def func1
#   yield 1,2
# end

# func1{ |x,y| puts " blocks are called using the method and passed #{x} and #{y}"}

# say_it = lambda{puts "yes i am lambda"}
# say_it.call

# to_power = lambda(x) {x**2}

# to_power.call(2)
# t

 # new_proc = Proc.new{|x,y| puts "hiiii am a new and i dont care about arguments but than too #{x} and #{y} passed"}
 #  new_proc.call(1,2,3)

# my_lambda = lambda{return 1}
# puts "result = #{my_lambda.call}"

# my_proc = Proc.new{return 1}
# puts "result = #{my_proc.call}"
#
# def return_binding
#   foo = 100
#   binding
# end



# puts return_binding.eval('foo')

