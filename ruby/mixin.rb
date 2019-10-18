# require "csv"
#   CSV.foreach("fav_food.csv") do |i,j|
#     puts "#{i} = #{j}"
#   end


require 'rubygems'
require 'json'
require 'pp'

obj = {"President"=>"Alan Isaac",
        "CEO"=>"David Richardson",
        "India"=>["Sachin Tendulkar", "Virender Sehwag", "Gautam Gambhir"],
        "Srilanka"=>["Lasith Malinga", "Angelo Mathews", "Kumar Sangakkara"],
        "England"=>["Alastair Cook", "Jonathan Trott", "Kevin Pietersen"]}



json = JSON.stringify(obj)

p json


 #module A
#   def func1
#     puts"Module A"
#   end
# end

# module B
#   def func2
#     puts "Module B"
#   end
# end

# class Myclass
#   include A
#   include B
# end


# obj1 = Myclass.new
# obj1.func1
# obj1.func2
