require "music_library" 

RSpec.describe MusicLibrary do
    context "initially" do 
        it "is empty" do 
            music_library = MusicLibrary.new
            expect(music_library.all).to eq []
        end

        it "returns empty when searching an empty list" do 
            music_library = MusicLibrary.new
            expect(music_library.search_by_title("from")).to eq []
        end


    end
end
