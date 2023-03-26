require "track" 

RSpec.describe Track do
    context "initially" do 
        it "is empty" do 
            track = Track.new("my_title", "my_artist")
            expect(track.title).to eq "my_title"
            expect(track.artist).to eq "my_artist"
        end

        it "formats title and artist into a single string." do 
            track = Track.new("my_title", "my_artist")
            expect(track.format).to eq "my_title by my_artist"
        end
    end
end
