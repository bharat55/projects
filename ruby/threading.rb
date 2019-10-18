
def func1
   i = 0
   a = 1
   while i<=2
      puts "a = #{a}"
      sleep(2)
      i = i+1
      a = a+1
   end
end

def func2
   j = 0
   b = 1
   while j<=2
      puts "b = #{b}"
      sleep(1)
      j = j+1
      b +=1
   end
end

puts "Started At #{Time.now}"
t1 = Thread.new{func1()}
t2 = Thread.new{func2()}
t1.join
t2.join
puts "End at #{Time.now}"
