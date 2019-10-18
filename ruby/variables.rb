def filter
  yield
end
filter {puts "Hello"}
#   end

#   def self.p
#     puts "hello from class method"
#   end

#   def private_method
#     puts "protected_method from #{self}"
#   end

# # private(:private_class_method, :private_method

#   protected
#   def self.say_hello
#     puts "hello from class method"
#   end

#   def protected_method
#     puts "protected_method from #{self}"
#   end

# end

# class B<A
# end


# obj = A.new

# A.private_class_method
# B.private_class_method

# B.say_hello
# B.abc

# A.new.protected_method
# B.new.protected_method

# class A
# # attr_reader :a1
# # attr_accessor :

# @@c_variable=0
# def initialize(a1,a2)
# @a1=a1
# @a2=a2
# @@c_variable +=1
# end
# def a1
# @a1
# end
# def self.a1
# self.name
# end

# def p1
# puts "#{@@c_variable},#{@name},#{@a2}"
# end
# def user_inf
# puts "name = #{@a1} , mobile_no = #{@a2}"
# A.c_variable(self) #self = aa1(object of class)
# end
# # def self.c_name(obj)
# # puts "class name = #{obj.name}"
# # end

# def self.user_info
# c_variable(self)
# end



# # def self.c_variable(obj) #now self = aa1 and aa1 = obj
# # puts "#{obj.a1}== #{@@c_variable}"# aa1.a1=piyush and
# # puts "#{obj.a1}"# its give class name
# end
# private_class_method :c_variable
# end
# aa1=A.new("piyush","rathore")

# aa1.user_inf
# A.user_info
# class A

#   def self.m1
#     m2
#   end

#   def self.m2
#     puts "Hii i am class method"
#   end
#   private_class_method :m2
# end

# obj = A.new
# obj.m1






# class A
#   attr_accessor :name, :age
#   def initialize
#     @name = name
#     @age = age
#     yield (self)
#   end
#   def show_data
#     puts "name = #{@name} and age = #{@age}"
#   end
# end

# obj = A.new { |obj1|
#   obj1.name = "Bharat"
#   obj1.age = 21
# {
# obj.show_data




# # $age = 21
# case $age
# when (1..5)
#   puts "a child"
# when(5..10)
#   puts "too small"
# when(10...20)
#   puts("An adult")
# when (20)
#   puts "ELigible"
# end
# sum= 0
# ar2 = []
# array = [[1,2,3],[4,5,6],[7,8,9]]
# for i in array
#   sum = 0
#   for j in i
#     sum+=j
#   end
#   ar2.push(sum)
# end
# puts "#{ar2}"

