#!/usr/bin/ruby

load "blog.rb"
load "post.rb"

require 'date'

#
# create blog
#
print "Enter blog name: "
blog = Blog.new(gets.chomp)
print "Enter user name: "
blog.user_name = gets.chomp

#
# create the posts
#
loop do

  print "Enter post name ('ENTER' when done): "
  name = gets
  name = name == nil ? "" : name.chomp
  break if name.length == 0

  post = Post.new(name)
  print "Enter summary: "
  post.summary = gets.chomp
  print "Enter post: "
  post.body = gets.chomp
  print "Enter post date: "
  post.published_date = Date.parse(gets.chomp)
  blog.posts << post

end

#
# display the blog and posts
#
puts "\nBlog #{blog.name} from #{blog.user_name}"
blog.posts.each do |p|
  puts "\nPosted at #{p.published_date} : #{p.summary}"
  puts "Text (#{p.word_count} words): "
  puts p.body
end
