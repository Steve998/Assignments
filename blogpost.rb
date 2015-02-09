
load "blog.rb"
load "post.rb"

require 'date'

b = Blog.new("new blog")
b.user_name = "Tom"

p = Post.new("Post 1")
p.summary = "Summary 1"
p.body = "this is the body of post 1"
p.published_date = Date.today
puts "Post 1 = #{p.word_count} words"
b << p

p = Post.new("Post 2")
p.summary = "Summary 2"
p.body = "this is the body of post 2 with more words"
p.published_date = Date.today
puts "Post 2 = #{p.word_count} words"
b << p

puts b.posts[0].body
