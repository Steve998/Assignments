require 'date'
require 'active_support'
require 'active_support/all'

puts "Show the date of the beginning of the current week"
puts (Date.today).at_beginning_of_week


puts " "

puts "Show what the date will be in 30 days"
puts Date.today + 30

puts " "

puts "Show what day of the week today's date will fall on next year"
puts (Date.today + 365).strftime("%A")

puts " "

puts "Show what day of the week the user\'s birthday will be on this year"
puts "Enter birthday: "
birthday = gets.chomp
puts birthday.to_date.strftime("%A")

puts " "

puts "Using the String class, pluralize a singular word the user enters"
puts "Enter a single word and the plural will be displayed:"
single_word = gets.chomp
puts "The plural of the word is : " + single_word.pluralize

puts "Now singleized a plural word the user enters"
puts "Enter a plural word and the singular will be displayed "
plural_word = gets.chomp
puts "The singular of this word is : " + plural_word.singularize

puts " "

puts "Using the String class, truncate a phrase the user enters to 20 letters"
puts "Enter a sentance that is more than 20 characters long"
long_sentence = gets.chomp
puts long_sentence.truncate(20)

puts " "

puts "Using the Array class, convert an array of three words to "
puts "a sentence with one command"
puts " "
puts array_ = ["First word","Second word","Third word"].to_sentence(words_connector: ' ')

puts " "
