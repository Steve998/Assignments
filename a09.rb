#section 1

puts "hello world".split(/ /)
puts "hello world".split(' ')

#section 2
peter =  "Peter Piper picked a peck of pickled peppers.
A peck of pickled peppers Peter Piper picked.
If Peter Piper picked a peck of pickled peppers,
Where's the peck of pickled peppers Peter Piper picked?"

puts peter.split("pick")
top_original = "You have brains in your head. You have feet in your shoes. " + \
"You can steer yourself any direction you choose. You're on your own." + \
" And you know what you know. And YOU are the one who'll decide where to go..."

#section 3
top_original.gsub!('You ','I ')
top_original.gsub!('your','my')
top_original.gsub!("You're ","I'm ")
top_original.gsub!("YOU are ","I'm ")
top_original.gsub!("you ","I ")
puts top_original

#section 4
part4_original = "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!"

puts part4_original.scan('sh').count

#section 5
puts part4_original.scan(/sh(?=o)/).count

#section 6

football = ("He played football despite having an artificial foot.")

puts football.scan(/foot(?!ball)/).count

#section 7
susie = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

print "The last sits is here:  "
puts susie.scan(/sits/).last
