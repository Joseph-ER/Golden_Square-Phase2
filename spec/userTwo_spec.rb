require "userTwo"

RSpec.describe "uppercaseStart method" do
  context "given a string that is not capitalized on the first word" do
    it "returns capitalized reminder" do
      result = uppercaseStart("Bad sentence.")
      expect(result).to eq true
    end
  end

  context "given a string that does not end in punctuation" do
    it "returns a puncuation reminder" do
      result = punctuationEnd("Bad sentence.")
      expect(result).to eq true
    end
  end
end