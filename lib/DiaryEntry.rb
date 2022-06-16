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
    minutes = @number_of_words / wpm
  end

  def reading_chunk(wpm, minutes)
    count = 0
    text_size = minutes * wpm
    contents_array = @contents.split(" ")
    return "Nothing to read" if contents_array.empty?
    while !contents_array.empty? do 
      if contents_array.count >= text_size
        return contents_array[0...text_size].join(" ")
        contents_array.slice![0...text_size]
        count += 1
      else
        return contents_array[0..-1].join(" ")
        break
      end   
    end
  end
end