require 'diary'

describe "unit tests " do
  it "add method has no errors " do
    diary = Diary.new
    entry = 'test contents'
    expect { diary.add_entry(entry) } .not_to raise_error
  end

  it "show_entries method" do
    diary = Diary.new
    entry1 = "this is entry 1"
    diary.add_entry(entry1)
    expect(diary.show_entries).to eq entry1
  end

  it "add_number method "do 
    diary = Diary.new
    num_entry = double(:show => "num contents 01111111111")
    expect {diary.add_number(num_entry)} .not_to raise_error
  end

  it "show_number method "do 
    diary = Diary.new
    num_entry = double(:show => "num contents 02222222222")
    diary.add_number(num_entry)
    expect(diary.show_numbers).to eq "02222222222"
  end

  it "timed_section method " do
    diary = Diary.new
    time_test = double("time test",:show => "one two three", :reading_time => 1)
    time_test2 =double("time test2",:show => "one two three four five", :reading_time => 1)
    diary.add_entry(time_test)
    expect(diary.timed_section(1,3)).to eq time_test
  end

  it "add_todo method "do
    diary = Diary.new
    todo = "this is my todo"
    expect {diary.add_todo(todo)}.not_to raise_error
  end

  it "show_todo method "do
  diary = Diary.new
  todo = double("todo1",:show_todo =>"this is another todo")
  todo2 = double("todo2",:show_todo =>"this is yet another todo")
  diary.add_todo(todo)
  diary.add_todo(todo2)
  expect(diary.show_todo).to eq "this is another todo, this is yet another todo"
  end

end