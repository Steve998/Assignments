
class Post

attr_accessor :summary, :body, :published_date
attr_reader :name, :word_count

def initialize(name)
@name = name
end

def body=(text)
@body = text
@word_count = @body.split.count
end

end
