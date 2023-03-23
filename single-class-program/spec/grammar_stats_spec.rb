require 'grammar_stats'

RSpec.describe GrammarStats do 
  grammar_stats = GrammarStats.new
  it "should return true if text starts with capital letter" do
    expect(grammar_stats.check("Hello!")).to eq true
  end

    it "fails" do
        expect { grammar_stats.check("") }.to raise_error "Nothing there, try again."
  end

  it "should return false if text does not starts with capital letter" do
    expect(grammar_stats.check("welcome")).to eq false

  end

  it "should return false if text does not starts with capital letter and 
  ends with ponctuation " do
    expect(grammar_stats.check("good morning!")).to eq false
  end

  it "should return true if text starts with capital letter and 
  ends with ponctuation " do
    expect(grammar_stats.check("Good morning!")).to eq true
  end
end

RSpec.describe GrammarStats do 
  it "should return 67% when 2 out 3 passed" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("How are you?!")
    grammar_stats.check("hello?")
    grammar_stats.check("Nice to see you!")
    expect(grammar_stats.percentage_good).to eq 67
  end

  it "should return 33% when 1 out 3 passed" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("How are you?!")
    grammar_stats.check("hi there!")
    grammar_stats.check("Nice to see you")
    expect(grammar_stats.percentage_good).to eq 34
  end

  it "should return 0 when none of them passed" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("hi!")
    grammar_stats.check("hello!")
    grammar_stats.check("Good afternoon")
    expect(grammar_stats.percentage_good).to eq 0
  end

  it "should return 0 when no check is called" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.percentage_good).to eq 0
  end

  it "should 100% when all tests passed" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hey, Bob!")
    expect(grammar_stats.percentage_good).to eq 100
  end 
end
