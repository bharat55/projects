#   file => test.txt

File.open("test.txt") do |file|
  puts file.inspect
  while line = file.gets
    if line.include?("sample")
      puts "yss"
    else
      puts "no"
    end
  end
end

