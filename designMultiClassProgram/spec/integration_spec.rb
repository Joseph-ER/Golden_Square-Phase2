require 'diary'
require 'diaryEntry'
require 'todo'

describe "integration " do

  context "diary with diaryEntry " do
    it "add method adds diaryEntry to @diary_entries array" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("title","contents")
      expect { diary.add_entry(diary_entry) } .not_to raise_error
    end
      
    it "show_entries method " do
      diary = Diary.new
      diary_entry = DiaryEntry.new("title","contents for show method")
      diary_entry2 = DiaryEntry.new("title2","contents for show method2")
      diary.add_entry(diary_entry)
      diary.add_entry(diary_entry2)
      expect(diary.show_entries).to eq [diary_entry, diary_entry2]
    end

    it "add_numbers method passes no errors" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("title","contents with number 09999999999")
      diary.add_entry(diary_entry)
      expect { diary.add_number(diary_entry) }.not_to raise_error
    end

    it "show_numbers method returns the passed number" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("title","contents with number 09999999999")
      diary.add_entry(diary_entry)
      diary.add_number(diary_entry)
      expect(diary.show_numbers).to eq "09999999999"
    end

    it "timed_section method " do
      diary = Diary.new
      diary_entry = DiaryEntry.new("reading section title","This section has got six words")
      diary.add_entry(diary_entry)
      expect(diary.timed_section(1,6)).to eq diary_entry
    end
  end 

  context "diary with todo tests" do

    it "add_todo method " do
      diary = Diary.new
      todo = Todo.new("Feed cat")
      expect {diary.add_todo(todo)}.not_to raise_error
    end

    it "show_todo method " do
      diary = Diary.new
      todo = Todo.new("Feed dog")
      diary.add_todo(todo)
      expect(diary.show_todo).to eq "Feed dog"
    end

  end
end