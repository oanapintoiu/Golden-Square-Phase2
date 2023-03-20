def grammar_check(text)
    # fail "Nothing there, try again." if text.empty?
    if text.empty?
    return "Nothing there, try again."
end

    letter_upcase = text[0] == text[0].upcase
    end_of_string = text.end_with?(".")
    # end_of_string = text[0] == text[0].end_with?(".")
    # the above would not have work as text[0] is treated
    # as an array looking at posiion 1 [0] and will 
    # disregard the the end_with? method 

    
    if letter_upcase && end_of_string
        return "Your sentence is correct!"
    else
        return "Try again."
end
end