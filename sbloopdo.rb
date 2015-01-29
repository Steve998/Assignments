#loop do loop
# requesting data from user
print "Please enter a number:  "
#The number entered is string into the variable user_number
user_number = gets.chomp

#initialize the iteration number to be used in the loop
iteration_number = 1
#the loop will process until the number of iterations meets the
#user entered number
loop do
#display the iteration number
   puts "This is iteration number:  #{iteration_number.to_s}"
#when the loop iteration equals the user entered number end the loop
   break if iteration_number == user_number.to_i
# increment the iteration
   iteration_number += 1
end
