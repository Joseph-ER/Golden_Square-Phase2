class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @number_of_words = @contents.split(" ").length
  end

  def reading_time(wpm)
    @minutes = @number_of_words / wpm
  end

  def reading_chunk(wpm, minutes)
    chunk = @number_of_words / wpm
    contents[chunk]
  end
end