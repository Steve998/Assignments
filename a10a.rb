#

puts "Enter a string here=> "
user_string = gets
puts "Length of raw string"
puts user_string.length


puts "this is the word count. is it correct?"
puts user_string.scan(/(\w|-)+/).size

puts "strip out the white space first "
user_string.strip!

puts "length after the strip "
puts user_string.length

puts "display the string after the strip white space"
puts "#{user_string}"

puts ' '


puts "This is the reverse of the string"
user_string.reverse!
puts "#{user_string}"

puts "this is the reverse string with the last character removed"
user_string.chop!
puts "#{user_string}"

puts "The string is reversed again and does not have the first character"
user_string.reverse!
puts "#{user_string}"
