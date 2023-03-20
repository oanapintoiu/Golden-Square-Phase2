# 1.  Describe the problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the Method Signature

1. Use Ruby
2. def grammar_check(text) = a method that will use if statements, upcase & end_with? methods

# 3. Create example Tests

require grammar_check for a string

<!-- if text is emply -->
=> Nothing there, try again!

<!-- No capital letter +  no full stop -->
=> Try again

<!-- No capital letter + full stop -->
=> Try again

<!-- Capital letter + no full stop -->
=> Try again
<!-- Capital letter + full stop -->
=> Your sentence is correct!

# 4. Implement the Behaviour

