require "grammar_check"


RSpec.describe "grammar_check method" do
context "empty string" do
it "returns Nothing there, try again" do
result = grammar_check("") 
expect(result).to eq "Nothing there, try again."
end
 end

    context "String with NO capital letter &  NO full stop" do
        it "returns Try again." do
result = grammar_check("ana are mere")
expect(result).to eq "Try again."
    end
end

context "string with NO capital letter & full stop" do
it "returns Try again." do
    result = grammar_check("ana are mere.")
    expect(result).to eq "Try again."
        end
    end

 context "String begins with capital letter but  NO full stop" do
it "returns Try again." do
    result = grammar_check("ana are mere")
    expect(result).to eq "Try again."
        end
    end

    context "string begins with capital letter &  ends in a full stop" do
        it "returns Your sentence is correct!" do
result = grammar_check("Ana are mere.")
expect(result).to eq "Your sentence is correct!"
    end
end
end