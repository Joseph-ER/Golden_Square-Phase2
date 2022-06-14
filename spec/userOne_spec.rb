require 'userOne'

RSpec.describe "time_mngr method" do
  context "get an empty string" do
    it "returns 0" do
      result = time_mngr("")
      expect(result).to eq 0
    end
  end

  context "given 200 words" do
    it "returns 1" do
      result = time_mngr("one "*200)
      expect(result).to eq 1
    end
  end

  context "given 400 words" do
    it "returns 2" do
      result = time_mngr("one "*400)
      expect(result).to eq 2
    end
  end
end