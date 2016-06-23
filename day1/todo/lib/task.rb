class Task
	attr_reader :content, :id, :complete, :created_at
	@@current_id = 1
	def initialize(content, id, complete)
		@content = content
		@created_at = Time.now
		@id = @@current_id
		@complete = false
		@@current_id += 1
	end
	def is_completed?
		false
		#check the completed attribute to see if its completed
	end

	def make_complete!
		if @complete == false
			@complete = true
		end
		#go into the taste and alter the altribute to be completed
	end

	def make_incomplete!
		if @complete == true
			@complete = false
		end
	end

	def update_content!(content)
		@content = content
		#@update_at = Time.now
	end

end