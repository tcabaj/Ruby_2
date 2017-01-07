require_relative 'menu'
require_relative 'muzyka'
require_relative 'manager'

manager = Manager.new
menu = Menu.new

while true
  system "cls"
  menu.draw
  printf "\n Wybierz opcje: "
  puts case gets.chomp
    when '1'
      puts
      puts 'Podaj tytul utworu: '
      title = gets.chomp
      puts 'Podaj wykonawce: '
      author = gets.chomp
      puts 'Podaj rok produkcji: '
      yop = gets.chomp
      manager.add_muzyka(title, author, yop)
      print "Utwor zostal dodany"
    when '2'
      puts
      puts 'Podaj ID piosenki, ktory chcesz usunac '
      id = gets.chomp
      manager.delete_muzyka(id)
      print 'Utwor zostal usuniety'
    when '3'
      puts
      puts 'Podaj ID piosenki'
      id = gets.chomp
      id = id.to_i
      puts 'Podaj tytul utworu: '
      title = gets.chomp
      puts 'Podaj wykonawce: '
      author = gets.chomp
      puts 'Podaj rok produkcji:  '
      yop = gets.chomp
      manager.update_muzyka(id, title, author, yop)
      puts 'Utwor zostal zmieniony'
    when '4'
      puts
      print "---- Lista utworow ----" + "\n"
      manager.get_muzyka
      printf "\n"
    when '0'
      break
      else
      puts 'Podales zly znak'
      gets

    end
end

runclass = Run.new
runclass
