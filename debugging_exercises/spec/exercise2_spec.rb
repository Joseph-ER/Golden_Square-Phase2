require 'exercise2.rb'

describe "Checks if tests are correct" do
  it "checks if tet 1 is correct" do
    result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
    expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end
  it "checks if test 2 is correct" do
    result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
    expect(result).to eq "theswiftfoxjumpedoverthelazydog"
  end
end