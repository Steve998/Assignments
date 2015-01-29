#while loop
# requesting data from user
print "Please enter a number:  "
#The number entered is string into the variable user_number
user_number = gets.chomp

#initialize the iteration number to be used in the loop
iteration_number = 1
#while loop processes the loop while the iteration_number is less than the user_number
#the user_number is set as integer to do the compare with iteration_number
while iteration_number <= user_number.to_i do
#display the iteration number. the iteration_number displays as string
puts "This is iteration number:  #{iteration_number.to_s}"
#increment the iteration_number for the next pass in the loop
  iteration_number += 1
end
