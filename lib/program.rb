require_relative 'menu'
require_relative 'muzyka'
require_relative 'manager'
# Run class
class Run
  @manager = Manager.new
  @menu = Menu.new
  i = 1
  while i == 1
    @menu.clear
    puts @menu.to_s
    printf "\n Wybierz opcje: "
    case gets.chomp
    when '1'
      puts
      title = ''
      author = ''
      yop = ''
      loop do
        puts 'Podaj tytul utworu: '
        title = gets.chomp
        break if title != ''
      end
      loop do
        puts 'Podaj wykonawce: '
        author = gets.chomp
        break if author != ''
      end
      loop do
        puts 'Podaj rok produkcji: '
        yop = gets.chomp
        break if @manager.numeric?(yop) == false
      end
      @manager.add_muzyka(title, author, yop)
      print 'Utwor zostal dodany'
      gets
    when '2'
      puts
      puts 'Podaj ID piosenki, ktory chcesz usunac '
      id = gets.chomp
      if @manager.exist_muzyka(id) == 1
        @manager.delete_muzyka(id)
        puts 'Utwor zostal usuniety'
      else
        puts 'Utwór o takim ID nie istnieje'
      end
      gets
    when '3'
      title = ''
      author = ''
      yop = ''
      puts
      puts 'Podaj ID piosenki'
      id = gets.chomp
      id = id.to_i
      loop do
        puts 'Podaj tytul utworu: '
        title = gets.chomp
        break if title != ''
      end
      loop do
        puts 'Podaj wykonawce: '
        author = gets.chomp
        break if author != ''
      end
      loop do
        puts 'Podaj rok produkcji: '
        yop = gets.chomp
        break if @manager.numeric?(yop) == false
      end
      @manager.update_muzyka(id, title, author, yop)
      gets
    when '4'
      puts
      print "---- Lista Utworow ---- \n"
      @manager.list_muzyka
      printf "\n"
      gets.chomp
    when '0'
      break
    else
      puts 'Podales zly znak'
      gets
    end
  end

  @runclass = Run.new
  @runclass
end
