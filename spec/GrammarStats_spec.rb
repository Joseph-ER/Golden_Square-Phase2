=begin
i the user
want to check if a string starts in a capital and ends in puncutation
I want to see a percentage check of the sentence


def  iniitalize
  @percent = 0

  def check(text) bool


  def percentage_good 
=end

require "GrammarStats"

describe GrammarStats  do
  context  "check method "do 

   it "pass if sentence starts in a capital and ends in a punctuation" do
    stats = GrammarStats.new
    result = stats.check?("Test sentence.")
    expect(result).to eq true
   end

   it "fail if punctuation but no capital" do
    stats = GrammarStats.new
    result = stats.check?("test sentence.")
    expect(result).to eq false
   end

    it "fail if start in capital but no punctuation" do
      stats = GrammarStats.new
      result = stats.check?("Test sentence")
      expect(result).to eq false
    end
  end

  context "percentage method" do
    it "tests 1 test for 100%" do
     stats = GrammarStats.new
     stats.check?("Test Sentence.")
     result = stats.percentage_good
     expect(result).to eq 100
    end

    it "tests 2 for 50%" do
      stats = GrammarStats.new
      stats.check?("Test Sentence.")
      stats.check?("Test Sentence")
      result = stats.percentage_good
      expect(result).to eq 50
    end

    it "tests 8 for 13%" do
      stats = GrammarStats.new
      stats.check?("Test Sentence.")
      stats.check?("Test Sentence")
      stats.check?("Test Sentence")
      stats.check?("Test Sentence")
      stats.check?("Test Sentence")
      stats.check?("Test Sentence")
      stats.check?("Test Sentence")
      stats.check?("Test Sentence")
      result = stats.percentage_good
      expect(result).to eq 13
    end
  end
end