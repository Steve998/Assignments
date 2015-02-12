
class Blog

  attr_accessor :user_name
  attr_reader :name, :posts

  def initialize(name)
    @name = name
    @posts = Array.new
  end

  def <<(post)
    @posts << post
  end

end
