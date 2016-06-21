# app.rb
require("artii")
require("sinatra")
require 'pry'


get "/get_word_art/?:word?/?:font?" do
	@word = params[:word]
	@font = params[:font]
	
	# asciifier = Artii::Base.new(:font => "cosmic")
	# @word_art = asciifier.asciify(@word)
	if  ((@word == "unicorn") && (@font == "special"))

		erb :special_secret
	else
		if @word  == nil
			@word = "Say Something!"
		end
		if @font == nil
			@font = "epic"
		end
		
		asciifier = Artii::Base.new(:font => @font)
		@word_art = asciifier.asciify(@word)
		erb(:word)
	end
end