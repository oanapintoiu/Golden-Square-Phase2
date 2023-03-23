class Music_Tracker
  def initialize
    @list = Array.new
  end

  def add_song(song)
    @list << song
  end

  def list_songs
    return @list.join(", ")
  end
end
