class Person < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :firstname, length: {minimum: 3}
  validates :lastname, length: {minimum: 3}

end
