require "make_snippet"

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "given a string of four words" do
    it "returns that string" do
      result = make_snippet("one two three four")
      expect(result).to eq "one two three four"
    end
  end

  context "given a string 5 words or longer only show 5 of those then '...'" do
    it "returns the first 5 words then '...'" do
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five..."
    end
  end
end