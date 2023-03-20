def todo_tracker(text)
    if text.empty? 
        return "No text here."
    end
 text.include?("#TODO") ? true : false
end


# def todo_tracker(text)
#     if text.empty? 
#         return "No text here."
#     else text.include?("#TODO") ? true : false
# end
# end


# def todo_tracker(text)
#     if text.empty? 
#         return "No text here."
#     elsif text.include?("#TODO")
#         return "There's already a #TODO task here."
#     else 
#         return "Please try again."
#     end
# end
