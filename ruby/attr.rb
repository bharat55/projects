# class A
#   def initialize (name,age)
#     @name = name
#     @age =age
#   end
#   def show_details
#     puts "name = #{@name} and age #{@age}"
#   end
# end
# class B < A
#  def initialize(a,b,c)
#      @post = c
#      super(a,b)
#   end
#   def  run
#     puts "#{@name},#{@age},#{@post} Is running"
#   end
# end

# obj = B.new("bharat",21,"engineer")
# obj.run


class A
  attr_writer :name, :age
  attr_reader :name, :age
    # attr_accessor :name, :age
  def initialize(name,age)
    @name = name
    @age  = age
  end
  def info
    puts "name = #{@name} and age =#{@age}"
  end
  # def name=(new_name)
  #   @name = new_name
  # end
  # def age=(new_age)
  #   @age = new_age
  # end

end

obj = A.new("Bharat",21)
obj.info
obj.name = "Ram"
obj.age = "32"
puts obj.name
puts obj.age

