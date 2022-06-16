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

def reading_time(wpm) => return reading time as int called minutes



=end

require 'DiaryEntry'

describe DiaryEntry do
  context "title method" do
    it "returns title text" do
      diary = DiaryEntry.new("test title ", "test contents ")
      expect(diary.title).to eq "test title "
    end
  end

  context "contents method "do
    it "returns contents text" do
      diary = DiaryEntry.new("test title ", "test contents ")
      expect(diary.contents).to eq "test contents "
    end
  end

  context "count_words method " do
    it "counts words in contents and returns it " do
      diary = DiaryEntry.new("test title ", "test contents ")
      expect(diary.count_words).to eq 2
    end
  end

  context "reading_time method " do
    it "calculates reading time based on WPM" do
      diary = DiaryEntry.new("test title ", "word "*400)
      diary.count_words
      expect(diary.reading_time(200)).to eq 2
    end
  end

  context "rading_chunk method " do
    it "returns chunk of contents depending on wpm and minutes" do
      diary = DiaryEntry.new("test title ", "word "*400)
      diary.count_words
      expect(diary.reading_chunk(3,1)).to eq "word word word "
    end
  end
end