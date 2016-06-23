#lib/post.rb

class Post
	attr_reader :title, :date, :text, :category, :author
	def initialize(title, date, text, category, author)
		@title = title
		@date = date
		@text = text
		@category = category
		@author = author
		
	end

	# def title(post)
	# 	post.title
	# end

	# def date(post)
	# 	post.date
	# end

	# def text(post)
	# 	post.text
	# end

	def print_post
		if @sponsor == "yes"
			puts "*******" + @title + "*******"
			puts "********"
			puts @text
			puts "--------"
		else
		puts @title
		puts "********"
		puts @text
		puts "--------"
	end
end

end