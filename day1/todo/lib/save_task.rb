# save_task.rb
require 'yaml/store'

module SaveTask

	def save
		@storage.transaction do
			@storage[@user] = @tasks
	end

	def load
		hash = YAML::load_file("./public/tasks_test.yml")
		@tasks = hash(@user)
	end
end