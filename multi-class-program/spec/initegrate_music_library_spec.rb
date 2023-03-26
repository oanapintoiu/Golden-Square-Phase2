require "music_library" 
require "track"

RSpec.describe "integration" do
    context "when we add a track to the library" do 
        it "comes back to the library" do 
            music_library = MusicLibrary.new
            track = Track.new("my_title", "my_artist")
            music_library.add(track)
            expect(music_library.all).to eq [track]
        end

        it "gets all tracks " do 
            music_library = MusicLibrary.new
            track_1 = Track.new("Carte Blanche", "Veracocha")
            track_2 = Track.new("Synaesthesia", "The Thrillseekers")
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq [track_1, track_2]
        end

        it "searches for tracks with full title" do 
            music_library = MusicLibrary.new
            track_1 = Track.new("Carte Blanche", "Veracocha")
            track_2 = Track.new("Synaesthesia", "The Thrillseekers")
            music_library.add(track_1)
            music_library.add(track_2)
            music_library.search_by_title("Carte")
        end

        it "searches for tracks with full title" do 
            music_library = MusicLibrary.new
            track_1 = Track.new("my_title_1", "my_artist_2")
            track_2 = Track.new("my_title_2", "my_artist_2")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("my_title_2")
            expect(result).to eq [track_2]
        end

        it " searches for tracks with partial title" do 
            music_library = MusicLibrary.new
            track_1 = Track.new("Carte Blanche", "Veracocha")
            track_2 = Track.new("Synaesthesia", "The Thrillseekers")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("aes")
            expect(result).to eq [track_2]
        end

        it "if no results, returns an empty list" do 
            music_library = MusicLibrary.new
            track_1 = Track.new("Carte Blanche", "Veracocha")
            track_2 = Track.new("Synaesthesia", "The Thrillseekers")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("zzz")
            expect(result).to eq []
        end

    end
end


