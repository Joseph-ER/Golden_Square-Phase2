require 'debug_2_ex_1'
 describe "program" do
  it "returns '2,i' for input 'Digital punk'" do
    counter = LetterCounter.new("Digital Punk")
    expect(counter.calculate_most_common).to eq [2, "i"]
  end
 end