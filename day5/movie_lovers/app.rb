# app.rb
require "sinatra"
require "sinatra/reloader"
require "imdb"



get "/" do

	erb(:title_search)
end


post "/keyword" do
the_movie_array = Imdb::Search.new(params[:keyword]).movies
@first_few = the_movie_array[0..14]
movies_with_posters = []
	@first_few.each do |x|
		if x.poster != nil
			movies_with_posters.push(x)
		end
@final_array = movies_with_posters[0..8]
	end
	@random_movie = @final_array.shuffle[0]
# index = params[:index].to_i
# @the_movie = [2]
erb(:info)
end

# post "/info/:index" do
# 	index = params[:index].to_i
# 	@selection = @final_array[index]
# 	erb(:answer)
# end