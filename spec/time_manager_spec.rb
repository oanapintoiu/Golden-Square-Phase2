require "time_manager"

RSpec.describe "time_manager method" do
    context "given an empty string" do
    it "it returns 0 for 0 words" do
    result = time_manager("")
    expect(result).to eq 0
end
end

    context "given 2 words" do
    it "it returns 1 for 2 words" do
    result = time_manager("one " * 100)
    expect(result).to eq 1
end
end


    context "given 200 words" do
    it "it returns 1 for 200 words" do
    result = time_manager("one " * 200)
    expect(result).to eq 1
end
end

    context "given 400 words" do
    it "it returns 2 for 400 words" do
    result = time_manager("one " * 400)
    expect(result).to eq 2
end
end

    context "given 500 words" do
    it "it returns 3 for 500 words" do
    result = time_manager("one " * 500)
    expect(result).to eq 3
end
end

    context "given 2000 words" do
    it "it returns 10 for 2000 words" do
    result = time_manager("one " * 2000)
    expect(result).to eq 10
end
end
end