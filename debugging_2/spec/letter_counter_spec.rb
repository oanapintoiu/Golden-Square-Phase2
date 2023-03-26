require 'letter_counter'

describe LetterCounter do 
  it "should return the most common letter" do 
    counter = LetterCounter.new("Digital Punk")
    expect(counter.calculate_most_common ).to eq [2, "i"]
  end

    it "should return the most common letter" do 
      counter = LetterCounter.new("carrot")
      expect(counter.calculate_most_common ).to eq [2, "r"]
  end

  it "should return the most common letter" do 
    counter = LetterCounter.new("green geese")
    expect(counter.calculate_most_common ).to eq [5, "e"]
  end

  it "should return the most common letter" do 
    counter = LetterCounter.new("mamma mia")
    expect(counter.calculate_most_common ).to eq [4, "m"]
 

end
end