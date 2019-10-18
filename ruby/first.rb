class A
  def initialize(s_name,age)
    @s_name = s_name
    @age = age
  end
  def self.method1
    puts "#{self.name}"
  end
end

obj = A.new("Bharat",21)
A.method1


# class A

#   def say_hello
#     puts "hello"


#     A.hii_hello
#   end
#   def self.hii_hello
#     puts "hiii_hello"
#   end
#   # private_class_method :hii_hello
#    protected_class_method :hii_hello
# end

# obj = A.new
# obj.say_hello
# # class Say_hello
# #    def hello
# #        puts "hello,Ruby!!"
# #     end
# end

# object = Say_hello.new
# object.hello

# win = rand(1..10)
# puts "Enter any number"
# guess = gets.to_i
# count = 1
# result = false

# while result != true

#   if guess == win
#     puts "you win !! and you made #{count} attempts"
#     result = true
#   elsif guess > win
#     puts "Too large number try again!!"
#     guess = gets.to_i
#     count+=1
#   else
#     puts "Too small number try again!!"
#     guess = gets.to_i
#     count+=1
#   end
# end
#  # str = "Hello"
 # putc str


# aFile = File.new("/home/rails/Desktop/Bharat/file1","r+")
# if aFile
#    aFile.syswrite("ABCDEF")
#    aFile.each_byte {|ch| putc ch; putc ?.  }
# else
#    puts "Unable to open file!"
# end

# begin
#    file = File.open("file2")
#    if file
#       puts "File opened successfully"
#    end
# rescue
#       file = STDIN
# end
# print file, "==", STDIN, "\n"


# begin
#    file = File.open("/unexistant_file","r")

#    if file
#       puts "File opened successfully"
#    end
# rescue


#    retry

# end
# file = open("file2")
# if file
#   puts "file opened"
#   puts file.sysread(100)
# end
# fname = "file1"
# begin
# file = File.open(fname,"r")
#   if file
#     puts file.sysread(100)
#   end
# rescue
#   fname = "file2"
#   retry
# end

 # puts "hiii how are you"
 # sleep(2)
 # puts "i am fine"
