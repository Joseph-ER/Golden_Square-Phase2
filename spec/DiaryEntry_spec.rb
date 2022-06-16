=begin

as a user
i want to pass title and contents
i want to read them and calculate how long they take to read

def initialize(title, contents)
  title: string
  contents: string

def title => puts title

def contetns => puts contents

def count_words => puts integer of word count

def reading_time(wpm) => return reading time as int



=end

require 'DiaryEntry'

describe DiaryEntry do
  context "title method" do
    it "returns title text" do
      diary = DiaryEntry.new("test title", "test contents")
      expect(diary.title).to eq "test title"
    end
  end
end