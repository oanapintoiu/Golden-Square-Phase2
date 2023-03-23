class TODO
  def initialize
    @list = Array.new
  end

  def addtask(task)
    #     #adds a string, returns nothing
    @list << task
  end

  def print_list
    #     #list/return the list of unfinished tasks
    return @list.join(", ")
  end

  def mark_complete(task)
    @list.delete(task)
  end
  # mark task as complete if complete
  # returns nothing

  # def print_complete
  # print out list of complete tasks
end
