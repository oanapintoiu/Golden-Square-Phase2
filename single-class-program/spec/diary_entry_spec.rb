require "diary_entry"

RSpec.describe "DiaryEntry class" do
  context "count words test" do
    it "returns 5 for hello" do
      result = count_words("hello")
      expect(result).to eq 5
    end
  end
end
