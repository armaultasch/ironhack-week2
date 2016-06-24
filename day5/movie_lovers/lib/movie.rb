# movie.rb
class Movie
	attr_reader :keyword
	def initialize(keyword)
		movies = []
		@keyword = keyword
	end

	def add_movie
		movies.push(Imdb::Search.new(@keyword))
	end

end
