require './tasks'

class App
  def initialize
    @tasks = []
  end

  def add_task
    loop do
      print 'Task: '
      task = gets.chomp
      new_task = Task.new(task)
      @tasks.push(new_task)
      puts
      puts 'Task Added Successfully 📝'
      puts
      print 'Do you want to add another task? [Y/N] : '
      choice = gets.chomp.downcase
      break if choice == 'n'
    end
  end

  def delete_task
    if @tasks.empty?
      puts
      puts 'There are no tasks to delete'
    else
      puts 'Enter index of task to delete'
      display_tasks
      index = gets.chomp.to_i
      @tasks.delete_at(index - 1)
      puts
      puts 'Task has been deleted successfully 💣'

    end
    puts
  end

  def mark_as_completed
    if @tasks.empty?
      puts
      puts 'There are no tasks to mark as completed'
    else
      puts 'Enter index of task to mark as completed'
      display_tasks
      index = gets.chomp.to_i
      task = @tasks[index - 1]
      task.completed = true
      puts
      puts 'Task marked as completed ✔️'
    end
    puts
  end

  def display_tasks
    if @tasks.empty?
      puts
      puts 'There are no tasks yet 🤖'
      puts
      return
    end

    @tasks.each_with_index do |task, index|
      status = task.completed == true ? '✅' : ''
      puts
      puts " - #{index + 1} : #{task} #{status}"
    end
    puts
  end
end
