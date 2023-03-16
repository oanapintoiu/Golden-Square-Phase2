# A method called make_snippet
# that takes a string as an argument 
# and returns the first five words 
# and then a '...' if there are more than that.

def make_snippet(text)
    words = text.split(" ")
    if words.length <= 5
        return text
    else return words[0,5].join(" ") + "..."
    end
end

