#a18.rb
require 'json'
require 'net/http'
require 'active_support'
require 'active_support/all'

puts "Enter a movie title: "
movie_title = gets.chomp

QUERY_URL = "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey="

uri = URI(QUERY_URL + "e4x32v88ekpgtdhd38yx3nbu&q=#{movie_title}&page_limit=1")
response = Net::HTTP.get(uri)


movie = File.open("movie_title.json","a") do |line|
  line.puts response
end

moviefile = File.read('movie_title.json')
parsed_data = JSON.parse(moviefile)["movies"]

parsed_data.each do |counter|
  puts counter["synopsis"]
end
