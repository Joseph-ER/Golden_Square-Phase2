class TodoList
=begin
  # THESE SHOULD ONLY BE ADDED, IF YOU SPECIFICALLY WANT THEM IN YOUR CLASS
  # NOT TO MAKE THINGS EASIER TO TEST!!
  attr_reader :list, :date_created # creates .list method
  attr_writer :list # creates `.list =` method
  attr_accessor :list # does both of the above
=end

  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    @list.push(todo)
  end

  # Returns an array of strings
  def incomplete
    incomplete_arr = []
    @list.each do |task|
      if task.done? == false
        incomplete_arr.push(task.task)
      end
    end
    return incomplete_arr.join(", ")
  end

  def complete
    complete_arr = []
    @list.each do |task|
      if task.done? == true
        complete_arr.push(task.task)
      end
    end
    return complete_arr.join(", ")
  end

  def give_up!
    # Marks all todos as complete
    @list.each do |task| 
      task.mark_done! 
    end
  end
end
