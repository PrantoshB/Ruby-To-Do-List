class Task
  def initialize(task = 'HeyHey', completed: false)
    @task = task
    @completed = completed
  end

  def to_s
    @task
  end
  attr_accessor :task, :completed
end
