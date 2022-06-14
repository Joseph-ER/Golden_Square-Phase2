require 'count_words'

RSpec.describe "counter method" do
  it "splits counts the number of words and returns that number" do
    result = counter("This has four words")
    expect(result).to eq 4
  end
end