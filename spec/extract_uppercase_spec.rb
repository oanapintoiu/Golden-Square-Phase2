require "extract_uppercase"

RSpec.describe "extract uppercase method" do
it "returns an empty string given an empty string" do
    expect(extract_uppercase("")).to eq []
end

it "returns an empty string given a string with no uppercase" do
    expect(extract_uppercase("hello world")).to eq []
end

it "returns only the uppercase words given mixed words" do
    result = extract_uppercase("hello WORLD")
    expect(result).to eq ["WORLD"]
end

it "returns all upercase words with a comma in between" do
    result = extract_uppercase("HELLO WORLD")
    expect(result).to eq ["HELLO", "WORLD"]
end

it "returns uppercase word only" do
    result = extract_uppercase("hello WORLD!")
    expect(result).to eq ["WORLD"]
end

it "returns no words if there's a lowercase in the uppercase word" do
    result = extract_uppercase("hello WoRLD")
    expect(result).to eq []
end
end