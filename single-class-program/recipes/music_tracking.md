1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE
=> ruby

class Music_Tracker

def initialize
#
end

def add_song(song)
end

def list_songs
end

end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE
music_tracking = Music_Tracker.new
music_tracking.addsong("song")
music_tracking.list_songs # => "song"


# 1
<!-- creates and empty list, it returns the empty list -->
music_tracking = Music_Tracker.new
music_tracking.add_song("")
music_tracking.list_songs # => ""


# 2
<!-- add a song, return the song in the list -->
music_tracking = Music_Tracker.new
music_tracking.add_song("Wheels on the bus")
music_tracking.list_songs # => "Wheels on the bus"

# 3
<!-- add 3 songs, return the 3 songs in the list -->
music_tracking = Music_Tracker.new
music_tracking.add_song("Wheels on the bus")
music_tracking.add_song("Hop little bunny")
music_tracking.add_song("Row your boat")
music_tracking.list_songs # => "Wheels on the bus, Hop little bunny, Row your boat"

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

