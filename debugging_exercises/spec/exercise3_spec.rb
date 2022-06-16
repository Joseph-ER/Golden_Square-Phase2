=begin


as the user
I want to input a text
and recieve the most commonly occuring letter

def get_common_letter(text) => char
  text: string



=end

require 'exercise3'

describe 'get_most_common_letter method to ' do
  it 'return "l" in "hello"' do
    expect(get_most_common_letter('hello')).to eq "l"
  end

  it 'return "e" in text "this is my long sentence tester"' do
  expect(get_most_common_letter('thees ees my long sentence tester')).to eq 'e'
end
end