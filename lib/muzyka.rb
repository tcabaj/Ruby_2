# Muzyka class
class Muzyka
  attr_accessor :id, :title, :author, :yop

  def initialize(id, title, author, yop)
    @id = id
    @title = title
    @author = author
    @yop = yop
  end
end
