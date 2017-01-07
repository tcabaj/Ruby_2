# Manager class
class Manager
  class << self; attr_accessor :muzyka end
  @@muzyka = []

  def add_muzyka(title, author, yop)
    id = @@muzyka.size + 1
    m = Muzyka.new(id, title, author, yop)
    @@muzyka.push(m)
  end

  def get_muzyka
    @@muzyka.each do |i|
      print "\n"
      print i.id
      print '. Tytul: '
      print i.title
      print ' Autor: '
      print i.author
      print ' Rok wydania: '
      print i.yop
    end
  end

  def delete_muzyka(id)
    id = id.to_i - 1
    @@muzyka.delete_at(id)
    @@muzyka.each do |i|
      if i.id > id
        i.id = i.id - 1
      end
    end
  end

  def update_muzyka(id, title, author, yop)
    @@muzyka[id - 1] = Muzyka.new(id, title, author, yop)
  end
end
