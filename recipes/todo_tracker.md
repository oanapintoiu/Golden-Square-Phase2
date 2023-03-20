# 1.  Describe the problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

# 2. Design the Method Signature

=> ruby
=> simple one method desgin -> def todo_tracker(text)

=> (1) if statements; and relevant methods such as empty? and include?("#TODO")

=> (2) true & false using relevant methods such as empty? and include?("#TODO")

# 3. Create example Tests

<!-- check if text is empty -->
-> return "No text here." 

<!-- check if there is a #TODO -->
-> return "There's already a #TODO task here."/ true.

<!-- check if there is anything else, such as a typo or no #TODO at all -->
-> return "Please try again."/ false. 

# 4. Implement the Behaviour
