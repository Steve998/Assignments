#!/usr/bin/ruby
# Brings in class info from other file.
load 'assignment21.rb'

loop do
# Creates an instance of Person.
user = Person.new

puts "Please enter your name (first and last):"

# Takes in user info and chomps it.
user_name = gets.chomp

break if user_name == '\q'.downcase
# Calls method 'name' on instance 'user' and passes in user info.
user.name(user_name)

puts "Please enter your birthdate (YYYY/DD/MM):"

user.birthdate = gets.chomp

puts "Hello, #{user.first_name.capitalize}. You are #{user.age} years old."
# The number of users is a class variable
puts "You are user No. #{Person.number_of_users}"

end
