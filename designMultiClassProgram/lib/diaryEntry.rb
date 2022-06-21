class DiaryEntry
  def initialize(title,contents)
    @title = title
    @contents = contents
    @phone_num = nil
  end

  def title
    return @title
  end

  def show
    return @contents
  end

  def reading_time(wpm)
    words = @contents.split(" ").length
    return words / wpm
  end
end