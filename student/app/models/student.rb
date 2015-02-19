class Student < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :firstname, length: {minimum: 3}
  validates :lastname, length: {minimum: 3}
  validates :age, numericality: true
  has_many :courses
end
