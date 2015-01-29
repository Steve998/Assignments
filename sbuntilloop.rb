#until loop
# requesting data from user
print "Please enter a number:  "
#The number entered is string into the variable user_number
user_number = gets.chomp

#initialize the iteration number to be used in the loop
iteration_number = 1
#the until loop will process until the number of iterations meets the
#user entered number
#the user_number is converted to integer
until iteration_number > user_number.to_i do

   puts "This is iteration number:  #{iteration_number.to_s}"
   iteration_number += 1
end
