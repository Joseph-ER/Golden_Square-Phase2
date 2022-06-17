=begin
## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.



## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TaskList
  def initialize()
    # ...
  end

  def add(task) # task is a string
    # No return value
  end

  def show_tasks
    return tasks_arr = array

  end

  def completed task(task)
    removes complete task from task_arr array
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

tasks =  TaskList.new
tasks.add("feed dog")
tasks.show = "feed dog"
tasks.complete("feed dog"


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

=end

require "single_class_ex1"


describe "add methd" do
  it "adds 'feed dog' to array of tasks" do 
    tasks = TaskList.new
    expect(tasks.add("feed dog").join(" ")).to eq "feed dog"
  end

  context " show_tasks method " do
    it "returns an error if no tasks in task_list" do
      tasks = TaskList.new
      expect {tasks.show_tasks}.to raise_error "No tasks in list"
    end

    it "returns 1 added task as a string" do
      tasks = TaskList.new
      tasks.add("feed cat")
      expect(tasks.show_tasks).to eq "feed cat"
    end

    it "returns 2 added tasks, each on a new line " do
      tasks = TaskList.new
      tasks.add("feed cat")
      tasks.add("rat play")
      tasks.add("coding work")
      expect(tasks.show_tasks).to eq("feed cat rat play coding work")
    end 
  end

  context "remove_task method" do
    it "removes array index if it matches text" do
      tasks = TaskList.new
      tasks.add("feed dog")
      tasks.remove("feed dog")
      expect {tasks.show_tasks}.to raise_error "No tasks in list"
    end
  end
end