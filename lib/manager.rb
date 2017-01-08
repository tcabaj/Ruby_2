# Manager class
class Manager
  class << self; attr_accessor :muzyka end
  @@muzyka = []
  def add_muzyka(title, author, yop)
    id = @@muzyka.length + 1
    m = Muzyka.new(id, title, author, yop)
    @@muzyka.push(m)
  end

  def list_muzyka
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

  def exist_muzyka(id)
    id = id.to_i - 1
    return 1 if @@muzyka[id]
  end

  def delete_muzyka(id)
    id = id.to_i - 1
    @@muzyka.delete_at(id)
    @@muzyka.each do |i|
      i.id = i.id - 1 if i.id > id
    end
  end

  def update_muzyka(id, title, author, yop)
    if exist_muzyka(id).nil?
      print 'Utwór o takim ID nie istnieje'
    else
      @@muzyka[id - 1] &&= Muzyka.new(id, title, author, yop)
      print 'Utwor zostal zmieniony'
    end
  end

  def numeric?(obj)
    obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/).nil? ? true : false
  end
end
