# Menu class
class Menu
  attr_accessor :menu

  def initialize
    @menu = "  Biblioteka Muzyczna \n"
    @menu << "----------------------------------\n"
    @menu << "1. Dodaj utwór muzyczny \n"
    @menu << "2. Usunac utwór muzyczny \n"
    @menu << "3. Edytuj podany utwór muzyczny \n"
    @menu << "4. Wyświetl wszystkie utwóry \n"
    @menu << "0. Wyjscie\n"
    @menu << "----------------------------------\n"
  end

  def to_s
    menu
  end

  def clear
    system 'clear'
    system 'cls'
  end
end
