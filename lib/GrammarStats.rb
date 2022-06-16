class GrammarStats
  def initialize
    @tests_run = 0
    @tests_passed = 0
  end

  def check?(text)
    punctuation_array = ["!",".","?"]
    @tests_run += 1
    if (text[0] == text[0].upcase) && (punctuation_array.include?(text[-1]))
      @tests_passed += 1
      return true
    elsif (text[0] != text[0].upcase) || (!punctuation_array.include?(text[-1]))
      return false
    end
  end

  def percentage_good
    percentage =  (@tests_passed.to_f)/(@tests_run.to_f) * (100)
    return percentage.ceil
  end
end