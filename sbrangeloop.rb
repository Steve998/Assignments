# range loop
# requesting data from user
print "Please enter a number:  "
#The number entered is string into the variable user_number
user_number = gets.chomp

# range loop
(1..user_number.to_i).each do |counter|

#puts "This is iteration number:  #{iteration_number.to_s}"
puts "This is iteration number:  #{counter}"

end
