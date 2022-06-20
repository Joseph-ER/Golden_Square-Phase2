require 'todo_list'

class MockIncompleteTodo
  def done?
    return false
  end
end

class MockCompleteTodo
  def done?
    return true
  end
end

describe "Todo list " do
  it "add method" do
    todo_list = TodoList.new
    todo_list.add("This is a task")
    expect { todo_list.add("This is a task") }.not_to raise_exception
  end

  describe '#incomplete' do
    it 'returns the incomplete todos' do
      todo_list = TodoList.new
      incomplete_todo = double("incomplete double", :done? => false, :task => "feed cat")
      incomplete_todo_2 = double("incomplete double 2", :done? => false, :task => "feed dog")
      complete_todo = double("complete double", :done? => true, :task => "tidy")
      expect(todo_list.incomplete).to eq ("")
      todo_list.add(incomplete_todo)
      todo_list.add(incomplete_todo_2)
      todo_list.add(complete_todo)
      expect(todo_list.incomplete).to eq ("feed cat, feed dog")
    end
  end

  describe "complete method "do
    it "returns the completed todos" do
      todo_list = TodoList.new
      incomplete_todo = double("incomplete1", :done? => false, :task => "dust computer")
      complete_todo1 = double("complete1", :done? => true, :task => "rat play")
      complete_todo2 = double("complete2", :done? => true, :task => "paint minis")
      todo_list.add(incomplete_todo)
      todo_list.add(complete_todo1)
      todo_list.add(complete_todo2)
      expect(todo_list.complete).to eq ("rat play, paint minis")
    end
  end
end