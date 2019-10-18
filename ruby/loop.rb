=begin
class Accounts
   def Accounts.show_balance()
     puts"you have thi much balance"
    end
end

def function()
  puts "this is a function"
end


 Accounts.show_balance

 function
=end

# $i =1
# $j=5


# until $i > $j do
#   puts "inside the while loop"
#   $i+=1
# end



# result = 70
# case result
#   when  0..30 then "fail"
#     puts "fail"
#   when 30..40
#     puts "pass"
#   when 40..60
#     puts "good"
#   when 60..80
#     puts "Excellent"
#   end
# a = [1,2,4,5,6,7]
# b  =  Array.new
# b = a.collect
# puts b

puts "Enter the value"
a = gets.to_i
# b= a.to_i
if a==5
  puts "it takes in as such form "
else
  puts "it takes the input  in string form  "
end
