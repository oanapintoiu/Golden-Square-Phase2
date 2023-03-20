# 1.  Describe the problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

# 2. Design the Method Signature

'''ruby
reading_time = count_words(text)

>> reading_time is an integer representing minutes


# 3. Create example Tests

'''ruby

reading time for a string: 
("") = 0 times
<200 = 1min
200 words = 1 min
400 words = 2 min
500 words = 3 min
2000 words = 10 minutes

# 4. Implement the Behaviour

