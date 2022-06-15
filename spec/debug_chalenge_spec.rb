require 'debug_challenge'

describe 'get_most_common_letter method' do
  it "gives 'l' when word is 'hello'" do
    result = get_most_common_letter("hello")
    expect(result).to eq "l"
  end
end