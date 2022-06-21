require 'todo'

describe "unit tests " do
  it "tests show_todo method" do
    todo = Todo.new("This is my todo")
    expect(todo.show_todo).to eq "This is my todo"
  end
end