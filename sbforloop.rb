#for i in loop
# requesting data from user
print "Please enter a number:  "
#The number entered is string into the variable user_number
user_number = gets.chomp

#initialize the iteration number to be used in the loop
iteration_number = 1
#set up the for loop. the user_number is converted to integer for the loop
for counter in (1..user_number.to_i)

#display the iteration number. the iteration_number displays as string
#puts "This is iteration number:  #{iteration_number.to_s}"
puts counter
#increment the iteration_number for the next pass in the loop
  iteration_number += 1
end
