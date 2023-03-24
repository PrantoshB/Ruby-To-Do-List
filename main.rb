require './app'
require './menu'

class Main
  def initialize
    @app = App.new
  end

  def run
    menu = Menu.new

    loop do
      menu.show_menu
      option = gets.chomp.to_i
      case option
      when 1
        @app.display_tasks
      when 2
        @app.add_task
      when 3
        @app.mark_as_completed
      when 4
        @app.delete_task
      when 5
        puts
        puts 'Thank You for using My App  ~Prantosh'
        puts
        break
      else
        puts 'Please enter a valid option'
      end
      puts 'Press any key to continue'
      gets.chomp
    end
  end
end

main = Main.new
main.run
