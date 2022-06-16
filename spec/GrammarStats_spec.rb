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
end