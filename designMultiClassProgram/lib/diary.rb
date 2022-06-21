class Diary
  def initialize
    @diary_entries = []
    @todo_list = []
    @numbers = []
  end

  def add_entry(diaryEntry)
    @diary_entries.push(diaryEntry)
  end

  def show_entries
    #show_arr = []
    #@diary_entries.each do |entry|
    #  show_arr.push(entry.show)
    #end
    #return @show_arr.join(", ")
    @diary_entries
  end

  def add_number(diary_entry)
    @numbers +=diary_entry.show.scan(/(0{1}[0-9]{10})/)
  end

  def show_numbers
    @numbers.each do |num|
      return num.join("")
    end
  end

  def timed_section(wpm, minutes)
    words_can_read = wpm*minutes
    readable_entries = @diary_entries.filter do |entry|
      entry.reading_time(wpm) <= words_can_read
    end
    return readable_entries.sort_by{|entry| entry.reading_time(wpm)}[-1]
  end

  def add_todo(todo)
    @todo_list.push(todo)
  end

  def show_todo
    show_arr = []
    @todo_list.each do |todo|
      show_arr.push(todo.show_todo)
    end
    return show_arr.join(", ")
  end


end
=begin
class Diary
methods
  - add_entry(DiaryEntry) DONE
  - show_entries- returns @diary_entries DONE
  - show_diary_by_time(wpm, minutes)- returns entry that is closest to wpm * minutes DONE
  - add_numbers(Number) DONE
  - show_numbers- returns all numbers in @numbers array DONE
  - add_todo(Todo) [add text to @todo_list array] DONE
  - show_todo_list- returns objects in @todo_list array DONE

class DiaryEntry
  methods:
  - add_entry DONE
  - show_entry  DONE
  - add_number(cotents) DONE
  - reading_time(wpm) returns reading time DONE


class Todo(title, contents)
  methods:
  - show_todo- returns todo DONE



=end