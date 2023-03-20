
def time_manager(text)
    words = text.split(" ")
      return (words.length / 200.to_f).ceil
  end

  # ceil rounds up the the heighest value
  #  so if 500/200 = 2.5, ceil will round up to 3
  

  # def time_manager(text)
#     text.split(" ").length / 200
#   end

# if code written as above,
# then 500/2 = 2.5