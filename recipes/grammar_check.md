# 1.  Describe the problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the Method Signature

1. Use Ruby
2. def grammar_check(text) = a method that will use .capitalize and gsub/regex to check for capital letter for first word of a string and and full stop at the end of a string.

# 3. Create example Tests

require grammar_check for a string


<!-- No capital letter +  no full stop -->
=> Please begin the sentence with a capital letter and end the sentence wiht a full stop.

<!-- No capital letter + full stop -->
=> Please begin the sentence with a capital letter.

<!-- Capital letter + no full stop -->
=> Please end the sentence wiht a full stop.

<!-- Capital letter + full stop -->
=> Your sentence is correct!

# 4. Implement the Behaviour

