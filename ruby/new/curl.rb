require 'open-uri'
require 'pry'

urls = [
  'https://www.google.com/',
  'https://www.youtube.com/',
  'http://www.rubyflow.com',
  'https://rubyonrails.org/'
]
# threads array
start_time  =  Time.now
puts "Started at #{start_time}"
puts "++++++++++++++++++++++++"

threads = []

urls.each do |url|
  threads << Thread.new(url) do |i|
    resp = open(i)
    puts "#{i} has content length #{resp.read.size} symbols"
  end
end

# run all threads
threads.each { |thr| thr.join }

puts "Total time taken#{Time.now-start_time}"

