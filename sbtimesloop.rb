# .times loop
# requesting data from user
print "Please enter a number:  "
#The number entered is string into the variable user_number
user_number = gets.chomp

# .times loop
user_number.to_i.times do |counter|

puts "This is counter number:  #{counter + 1}"

end
