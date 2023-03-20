require "todo_tracker"

RSpec.describe "todo_tracker method" do 
    context "check if a text includes the string #TODO" do
        it "returns 'No text here.' if string is empty" do
        result = todo_tracker("")
        expect(result).to eq "No text here."

    end
end

it "returns true if string had #TODO in it" do
    result = todo_tracker("#TODO")
    expect(result).to eq true
end

it "returns true if string had #TODO in it" do
    result = todo_tracker("#TODO go get some milk today")
    expect(result).to eq true
end

it "returns false if string had #TODO in it" do
    result = todo_tracker("#TO")
    expect(result).to eq false
end

it "returns true if string had #TODO in it" do
    result = todo_tracker("#TODOgetchocolate")
    expect(result).to eq true
end

it "returns false if string had #TODO in it" do
    result = todo_tracker("#todo go to the market")
    expect(result).to eq false
end

it "returns false if string had #TODO in it" do
    result = todo_tracker("#todogopickupthecar")
    expect(result).to eq false
end
end

# it "returns 'There's already a #TODO task here.' if string had #TODO in it" do
#     result = todo_tracker("#TODO")
#     expect(result).to eq "There's already a #TODO task here."
# end

# it "returns 'There's already a #TODO task here.' if string had #TODO in it" do
#     result = todo_tracker("#TODO go get some milk today")
#     expect(result).to eq "There's already a #TODO task here."
# end

# it "returns 'Please try again.' if string had #TODO in it" do
#     result = todo_tracker("#TO")
#     expect(result).to eq "Please try again."
# end

# it "returns 'There's already a #TODO task here' if string had #TODO in it" do
#     result = todo_tracker("#TODOgetchocolate")
#     expect(result).to eq "There's already a #TODO task here."
# end

# it "returns 'Please try again.' if string had #TODO in it" do
#     result = todo_tracker("#todo go to the market")
#     expect(result).to eq "Please try again."
# end

# it "returns 'Please try again.' if string had #TODO in it" do
#     result = todo_tracker("#todogopickupthecar")
#     expect(result).to eq "Please try again."
# end
# end