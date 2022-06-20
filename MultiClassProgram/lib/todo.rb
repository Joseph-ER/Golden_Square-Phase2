class Todo
  def initialize(task) # task is a string
    @task = task
    @completed = false
  end

  def task
    return @task
  end

  def mark_done!
     @completed = true
  end

  def done?
    return @completed
  end
end