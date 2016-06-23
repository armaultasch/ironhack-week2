# app.rb
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todolist.rb')
#require_relative('lib/save_task.rb')

to_do_list = ToDoList.new
task1 = Task.new("Go get the groceries")
to_do_list.add_task(task1) 

get "/tasks" do
	puts "\n--------------------LLLLLLLLL---------"
	p to_do_list.tasks
	puts ""
	@show_tasks = to_do_list.tasks
	erb(:task_index)
end

# 	my_save = SaveTask.new
# get "/" do
# 	@saved_task = my_save.load
# 	erb (:task_index)
# end

get "/new_task" do
	erb(:new_task)
end


post "/create_task" do
	new_task = Task.new(params[:task_content])
	to_do_list.add_task(new_task)
	
	redirect to "/tasks"
	end


get "/complete_task/:id" do 
	the_task = my_list.find_task_by_id()