require "userTwo"

RSpec.describe "uppercaseStart method" do
  context "given a string that is not capitalized on the first word" do
    it "returns capitalized reminder" do
      result = uppercaseStart("Bad sentence.")
      expect(result).to eq "Remember to capitalize first word of a sentence!"
    end
  end

  context "given a string that does not end in punctuation" do
    it "returns a puncuation reminder" do
      result = punctuationEnd("Bad sentence.")
      expect(result).to eq "Remember to end your sentence in punctuation!"
    end
  end
end