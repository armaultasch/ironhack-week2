# save_task.rb
class SaveTask
	def save(task)
		IO.write("save_task.txt", text)
	end

	def load
		if File.exist?("save_task.txt")
			text = IO.read("save_task.txt")
			text
		else 
			nil
		end
	end

end