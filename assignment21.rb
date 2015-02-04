=begin
This is assignment 21 and is due on Feb 05, 2015.

Write a Person class and some code to use it, following the directions below.
First

Create a Person class with attributes: first name, last name, and birthdate.
First name and last name should not be able to be written to, but should be readable.
Birthdate can be set and read.
Create a public instance method called name that takes the name and sets the first name and last name instance variables. This is so the first name and last name attributes are set by passing in one name.
Create a public instance method called age to calculate and return the user's age.
Now, outside the Person class, ask the user their information and use it to create the Person object.
After asking each user their information, output the user's age.
Next

Create a class variable that will count the number of people that enter in their information. After you output the person's age, also output the number of person they are so far (using the class variable).
Loop to allow another user to enter their information. (exit when user enters \q for name). Create a Person object for each user.
Create a private method called calculateAge. This should contain the functionality you previously had in the age method. The public age method should now call this new private calculateAge method.
=end

#!/usr/bin/ruby
# Requires some libraries.
require 'date'
require 'active_support'
require 'active_support/all'

# Defines setters/getters.
class Person
  attr_reader :first_name
  attr_reader :last_name
  attr_accessor :birthdate
  @@count_user = 0

# Takes in full name, converts it to first and last.
  def name(full_name)
    name = full_name.split(' ')
    @first_name = name[0]
    @last_name = name[1]
  end

# Figures out the user's age in years.
  def age
  #  Uses a Private def below
  return calculateAge
  end

# Increment the User count
  def initialize
    @@count_user += 1
  end

  def self.number_of_users
    @@count_user
  end
# Private def
  private
  def calculateAge
    (Date.today - @birthdate.to_date).to_i/365
  end

end
