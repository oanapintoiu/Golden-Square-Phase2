require "music_tracking"

RSpec.describe Music_Tracker do
  context "creates an empty list" do
    it "returns and empty list" do
      music_tracking = Music_Tracker.new
      music_tracking.add_song("")
      expect(music_tracking.list_songs).to eq ""
    end
  end

  it "add a song, return the song in the list" do
    music_tracking = Music_Tracker.new
    music_tracking.add_song("Wheels on the bus")
    expect(music_tracking.list_songs).to eq "Wheels on the bus"
  end

  it "add 3 songs, return the 3 songs in the list" do
    music_tracking = Music_Tracker.new
    music_tracking.add_song("Wheels on the bus")
    music_tracking.add_song("Hop little bunny")
    music_tracking.add_song("Row your boat")
    expect(music_tracking.list_songs).to eq "Wheels on the bus, Hop little bunny, Row your boat"
  end
end
