require "todo_list" 

RSpec.describe TODO do

    it "creates and empty lists, prints empty list" do
    todo_list = TODO.new
    expect(todo_list.print_list).to eq ""
    end


it "adds task to the list, returns incomplete task" do
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
expect(todo_list.print_list).to eq "do weekly shopping"
end

it "adds 4 tasks to the list, returns all 4 incomplete tasks" do
    todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.addtask("watch fav show")
todo_list.addtask("go to softplay")
todo_list.addtask("practice hobby")
expect(todo_list.print_list).to eq "do weekly shopping, watch fav show, go to softplay, practice hobby"
end

it "adds 6 tasks to the list, returns 6 incomplete tasks" do
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.addtask("watch fav show")
todo_list.addtask("go to softplay")
todo_list.addtask("practice hobby")
todo_list.addtask("do some gardening")
todo_list.addtask("read an article")
expect(todo_list.print_list).to eq "do weekly shopping, watch fav show, go to softplay, practice hobby, do some gardening, read an article"
end

it "adds 6 tasks to the list, complete 2, list 4 incomplete" do
todo_list = TODO.new
todo_list.addtask("do weekly shopping")
todo_list.addtask("watch fav show")
todo_list.addtask("go to softplay")
todo_list.addtask("practice hobby")
todo_list.addtask("do some gardening")
todo_list.addtask("read an article")
todo_list.mark_complete("do some gardening")
todo_list.mark_complete("read an article")
expect(todo_list.print_list).to eq "do weekly shopping, watch fav show, go to softplay, practice hobby"
end

end