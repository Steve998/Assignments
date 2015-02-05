# Assignment 18

require 'json'
require 'net/http'
require 'active_support'
require 'active_support/all'

puts "Enter a movie title: "
movie_title = gets.chomp

QUERY_URL = "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey="

uri = URI(QUERY_URL + "e4x32v88ekpgtdhd38yx3nbu&q=#{movie_title}&page_limit=1")

parsed_data = JSON.parse(Net::HTTP.get(uri))["movies"]

parsed_data.each do |counter|
  puts counter["synopsis"]
end
