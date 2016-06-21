
class ToDoList
	attr_reader :tasks
	def initialize 
		@tasks = []
	end

	def add_task(task)
		@tasks.push(task)
	end

	def delete_task(content)
		@tasks.delete_if {|task| content == task.content}

	end

	def find_task_by_id(task_id)
		@tasks.find {|the_task| the_task.id == task_id}
	end
end