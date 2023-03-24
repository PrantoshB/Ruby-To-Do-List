class Menu
  def show_menu
    puts
    puts 'To-Do List'.center(40, '-')
    puts
    puts '1. Show all tasks'
    puts '2. Create new task'
    puts '3. Mark a task as completed'
    puts '4. Delete a task'
    puts '5. Exit'
    puts
    print 'Enter your choice: '
  end
end
