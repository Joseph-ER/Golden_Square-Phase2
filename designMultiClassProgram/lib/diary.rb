class Diary
def initialize
  @diary_entries = []
  @todo_list = []
  @numbers = []
end

end
=begin
class Diary
methods
  - add_entry(DiaryEntry)
  - show_entries- returns @diary_entries
  - show_diary_by_time(wpm, minutes)- returns entry that is closest to wpm * minutes
  - add_numbers(Number)
  - show_numbers- returns all numbers in @numbers array
  - add_todo(Todo) [add text to @todo_list array]
  - show_todo_list- returns objects in @todo_list array

class DiaryEntry
  methods:
  - add_entry
  - show_entry 
  - reading_time(wpm) returns reading time


class Todo
  methods:
  - add_todo(todo :string)
  - show_todo- returns todo
---Possibly----
class Numbers
  methods:
  -add number(name :string, number :string)
  -show_number- returns name and number

=end