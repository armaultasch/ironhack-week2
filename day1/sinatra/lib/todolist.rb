
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
		#def delete_task(task_id)
		####@tasks.delete_if do |task|
		# if task.id == task_id
			#true
		#else
			#false
		#end
		#end
		#end

	def find_task_by_id(task_id)
		@tasks.find{ |task| task_id == task.id}
	end
end