require "count_words"

RSpec.describe "count words method" do
  context "given no words" do
    it "returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end

  context "given 5 words" do
    it "returns 5" do
      result = count_words("Hello there I am Oana")
      expect(result).to eq 5
    end
  end

  context "given 7 words" do
    it "returns 7" do
      result = count_words("I am going to visit my parents")
      expect(result).to eq 7
    end
  end
end
