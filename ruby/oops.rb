# def MiniStatement

# class User
#   attr_accessor :name, :age
#   @@user_count = 0
#   def initialize
#     @name =name
#     @age = age
#     yield self
#     @@user_count +=1
#   end

#   def self.count_user(obj)
#     puts "total instances are #{@@user_count} "
#     obj.info
#   end


#   def info
#     puts "name = #{@name}  and age = #{@age}"
#   end

#   def imethod
#     w "this is instance method"
#   end
#   def say_hello
#     puts "hello from parent class "
#   end
#   def self.Pro_method
#     class_method
#   end
#  protected
#   def self.class_method
#     puts "this is the class method of parents class "
#   end



# end



# class New_one < User
#   def  say_hello
#     super()
#     puts "hello from child class "
#   end





# end
# user1 = User.new {|user1|
#      user1.name = "Bharat"
#      user1.age = 21
# }

# user2 = New_one.new("rohan",43)
# user2.say_hello
# User.Pro_method
# User.count_user(user1)


 class A
  def initialize (name,age)
    @name = name
    @age = age
  end

  def to_s
     "Name =  #{@name},age = #{@age}"
  end

end

a1 = A.new("Bharat",21)
puts a1
# class B < A
#  def initialize(name, age, post)
#     @post  = post
#     super(name, age)
#   end

#   def show_age
#     puts "age is #{@age}"
#   end
#   def show_detail
#     puts "name = #{@name} , age = #{@age} "
#   end
# end


# obj1 = A.new("raj",21)
# obj2 = B.new("harish",25,"Engineer")
# obj1.show_detail
# obj2.show_detail


