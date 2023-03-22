require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe "@count_words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("my_title", "some content about cats")
      expect(diary_entry.count_words).to eq 4
    end
  end

  describe "@count_words" do
    it "returns 0 when contents are empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  it "returns the reading time for the content" do
    diary_entry = DiaryEntry.new("Summer", "flwoers " * 550)
    expect(diary_entry.reading_time(200)).to eq 3
  end

  it "returns the reading time for the contents" do
    diary_entry = DiaryEntry.new("my_tittle", "Hello " * 1950)
    expect(diary_entry.reading_time(200)).to eq 10
  end

  context "given a wpm of 0" do
    it "fails" do
      diary_entry = DiaryEntry.new("my title", "one two three")
      expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
    end
  end

  describe "reading_chunck" do
    it "returns the full text readable witthin the given minutes" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      chunk = diary_entry.reading_chunk(200, 1)
      expect(chunk).to eq "one two three"
    end
  end

  it "returns a chunk of the text if not readable within the given minutes" do
    diary_entry = DiaryEntry.new("my_title", "one two three")
    chunk = diary_entry.reading_chunk(2, 1)
    expect(chunk).to eq "one two"
  end


#   it "returns next chunk next time it is called" do
#     diary_entry = DiaryEntry.new("my_title", "one two three")
#     diary_entry.reading_chunk(2, 1)
#     chunk = diary_entry.reading_chunk(2, 1)
#     expect(chunk).to eq "three"
#   end

#   it "restarts after reading the whole contents" do
#     diary_entry = DiaryEntry.new("my_title", "one two three")
#     diary_entry.reading_chunk(2, 1)
#     diary_entry.reading_chunk(2, 1)
#     chunk = diary_entry.reading_chunk(2, 1)
#     expect(chunk).to eq "one two"
#   end
end
