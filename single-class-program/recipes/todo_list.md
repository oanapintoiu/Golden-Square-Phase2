Single-Class Programs Design Recipe
# 1. Describe the Problem
Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.


As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


 # 2. Design the Class Interface
The interface of a class includes:

class TODO

def initialize(task)?
#....
end

def addtask(task) 
#adds a string, returns nothing
end

def print_list 
#list/return the list of unfinished tasks 
end 

def mark_complete 
#mark task as complete if complete
#fail if task does not exist empty
#fail if task is empty
#returns nothing
end

def print_complete ?bonus? 
#print out list of complete tasks
end

# 3. Create Examples as Tests
 
Tests: 

# 1. 

todo_list = TODO.new
todo_list.list # => []
______________________________


<!-- adds task to the list -->
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.list # => ["do weekly shopping"]

<!-- adds 4 tasks to the list -->
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.addtask("watch fav show")
todo_list.addtask("go to softplay")
todo_list.addtask("practice hobby")
todo_list.list # => ["do weekly shopping, watch fav show, go to softplay, practice hobby"]

<!-- adds 6 tasks to the list -->
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.addtask("watch fav show")
todo_list.addtask("go to softplay")
todo_list.addtask("practice hobby")
todo_list.addtask("do some gardening")
todo_list.addtask("read an article")
todo_list.list # => ["do weekly sopping, watch fav show, go to softplay, practice hobby, do some gardening, read an article"]

<!-- adds 6 tasks to the list, complete 2, list 4 incomplete -->
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.addtask("watch fav show")
todo_list.addtask("go to softplay")
todo_list.addtask("practice hobby")
todo_list.addtask("do some gardening")
todo_list.addtask("read an article")
todo_list.mark_complete("do some gardening")
todo_list.mark_complete("read an article")
todo_list.list # => ["do weekly sopping, watch fav show, go to softplay, practice hobby"]


# 4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.





# EXAMPLE

class Reminder
  def initialize(name) # name is a string
    # ...
  end

  def remind_me_to(task) # task is a string
    # No return value
  end

  def remind()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
end


