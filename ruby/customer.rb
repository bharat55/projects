=begin
class Customer
  @@total_number = 0
  def initialize(id,name,dept)
    @id = id
    @name =name
    @dept = dept
  end
  def display_ditails()
    puts "id = #@id"
    puts "name =#@name"
    puts "dept =#@dept"
  end
  def customer_number()
    @@total_number = @@total_number+1
    puts "Total number of customer =#@@total_number"
  end
end

cust1 = Customer.new("1","bharat","engineering")
cust2 = Customer.new("2","mohit","arts")

cust1.display_ditails()
#cust1.customer_number()

cust2.display_ditails()
cust2.customer_number()
=end

# class Myclass
#   def initialize(a,b)
#     @x = a
#     @y = b
#   end
#   def showData ()
#     puts "complex number = #@x+i#@y"
#   end
# end

# c1 =Myclass.new(2,3)
# c1.instance_variable_set(:@x,12)
# c1.showData




#progran to find data persistance

puts "Enter any number"
num = gets.to_i
def power_two(num)
  return num**2
end

puts power_two(num)
