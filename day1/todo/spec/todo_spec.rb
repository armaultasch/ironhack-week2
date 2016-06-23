require_relative("../lib/task.rb")
require_relative("../lib/todolist.rb")

RSpec.describe Task do
	before :each do
		@the_task = Task.new("some content")
	end
	describe "#is_completed?" do
	it "all created tasks are false" do
		expect(@the_task.is_completed?).to be_falsey
	end
end
describe "#make_complete!" do
	it "complete a task, make it true from false" do
		expect(@the_task.make_complete!).to be_truthy
	end
end
describe "#make_incomplete!" do
	it "take a completed task and make it incomplete" do
		@the_task.make_complete!
		@the_task.make_incomplete!
		expect(@the_task.is_completed?).to be_falsey
	end
end
describe "#update_content!" do
	it "change the content" do
		expect(@the_task.update_content!("What you mean")).to eq("What you mean")
	end
end

end

RSpec.describe ToDoList do
	before :each do
		@to_do_list = ToDoList.new
			task1 = Task.new("Walk the Dog")
			task2 = Task.new("Do the laundry")
			task3 = Task.new("Go get the groceries")

		@to_do_list.add_task(task1) 
		@to_do_list.add_task(task2) 
		@to_do_list.add_task(task3) 

	end
	describe "#add_task" do
		it "will add tasks to the array" do

			expect(@to_do_list.tasks.length).to eq(3)

		end
	end


	describe "#delete_task" do
		it "deletes the task you tell it" do

			expect(@to_do_list.delete_task("Do the laundry").length).to eq(2)
			#expect (@to_do_list.@tasks).to include(task2)
			#old_lendth = @to_do_list.@tasks.length
			#@to_do_list.delete_task(task2.id)
			#expect (@to_do_list.@tasks).not_to include(task2)
			#expect (@to_do_list.@tasks.length).to eq(2)
		end
	end

	# describe "#find_task_by_id" do
	# 	it "returns the task for the correct id" do
	# 		expect(@to_do_list.find_task_by_id(task1.id)).to eq(task1)
	# 	end
	# end
	# 	it "returns nil for incorect id" do
	# 		expect(@to_do_list.find_task_by_id(99999)).to eq(nil)
	# 	end
	
end


