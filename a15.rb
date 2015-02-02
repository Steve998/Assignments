#questions = ["Question1? " ,"Question2? "]

file = File.new("question_text.txt","r")
questions = file.readlines

answers = Array.new
increment_q = 0
questions.each  do |counter|

  puts counter
  puts ' '
  user_answer = gets.chomp
  puts ' '

  puts "The answer is - #{user_answer}"
  puts ' '

  answers.insert(increment_q, "#{user_answer}")
increment_q += 1
end

increment = 0
answers.each do |answer_count|
  puts "Here is question #{questions[increment]} with the answer"
  puts questions[increment]
  puts answers[increment]
  increment += 1
  puts ' '
end

puts "This is end of answers"
