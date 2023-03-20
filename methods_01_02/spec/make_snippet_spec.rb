require "make_snippet"

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "given 5 words" do
    it "returns 5 words" do
      result = make_snippet("Hello there I am Oana")
      expect(result).to eq "Hello there I am Oana"
    end
  end

  context "given 5 words" do
    it "returns 5 words and ..." do
      result = make_snippet("Hello there my name is Oana")
      expect(result).to eq "Hello there my name is..."
    end
  end
end
