class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
    @title = title
    @contents = contents
    @text_start = 0 
  end

  def title # Returns the title as a string
    @title
  end

  def contents # Returns the contents as a string
    @contents
  end

  def count_words() # Returns the number of words in the contents as an integer
    @contents.split.length
  end

  def reading_time(wpm)
    fail "Reading speed must be above zero." unless wpm.positive?

    (count_words / wpm.to_f).ceil
  end

  # wpm is an integer representing the number of words the
  # user can read per minute
  # Returns an integer representing an estimate of the reading time in minutes
  # for the contents at the given wpm.

  def reading_chunk(wpm, minutes)

    text_to_read = wpm * minutes

    start_from = @text_start
    text_end = start_from + text_to_read

    @text_start = text_end

    if start_from >= count_words
        @text_start = 0
        return "End"
    end

    @contents.split[start_from...text_end].join(" ")
    
end
end

  # `wpm` is an integer representing the number
  # of words the user can read per minute
  # `minutes` is an integer representing the
  # number of minutes the user has to read
  # Returns a string with a chunk of the contents that the user could read
  # in the given number of minutes.
  # If called again, `reading_chunk` should return the next chunk, skipping
  # what has already been read, until the contents is fully read.
  # The next call after that it should restart from the beginning.