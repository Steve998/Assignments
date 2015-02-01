
# Generate a random number
computer_number = rand(1..5)
loop_counter = 0
user_guess = 0


# Loop until the user enters in the correct number
until computer_number == user_guess do
  print "Please Enter a number: "
  user_guess = gets.chomp.to_i
  if user_guess > computer_number
    puts "Number is too high. Try again!"
  elsif user_guess < computer_number
    puts "Number is too low. Try again!"
  end

  loop_counter += 1
end

# When user is correct, display message and the number of attampts
puts ' '
puts "The number is correct. You tryed #{loop_counter} times"
