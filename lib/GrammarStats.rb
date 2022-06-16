class GrammarStats
  def initialize
    @tests_run = 0
    @tests_passed = 0
  end

  def check?(text)
    punctuation_array = ["!",".","?"]
    if (text[0] == text[0].upcase) && (punctuation_array.include?(text[-1]))
      return true
    else
      return false
    end
  end

  def percentage_good
    # number of tests that passed (multiple, NOT percentage of THE that THIS code passed)
  end
end