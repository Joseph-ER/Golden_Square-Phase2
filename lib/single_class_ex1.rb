class TaskList
  def initialize
    @task_list = []
  end

  def add(task)
      @task_list.push(task)
  end

  def remove(text)
    for i in 0..@task_list.length
      if @task_list[i] == text
        @task_list.delete_at(i)
      end
    end
  end

  def show_tasks
    if @task_list.length > 0
      return @task_list.join(" ")
    else 
      fail "No tasks in list"
    end
  end
end
