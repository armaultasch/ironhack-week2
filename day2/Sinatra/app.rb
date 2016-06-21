require "sinatra"

get "/" do 
	erb(:home)
end

get "/hi" do
	@name = "Alison"
	erb(:hi_page)
end

get "/about" do 
	erb(:about)
end

get "/recipe" do 
	@name = "Magic Brownies"
	@ingredients = [
		"eggs",
		"flour",
		"water",
		"cocoa",
		"herb",
		"sugar",
		"icing"
		]

	erb(:recipe_page)
end


users = {
	"armaultasch" => { :name => "Alison Maultasch", :email => "armautlasch@gmail.com"},
	"nizar" => { :name => "Nizar Khalife", :email => "nizar@ironhack.com"},
	"alia" => { :name => "Alia Poonawala", :email => "aaaa@aaaa.com"}
}

get "/users/:username" do 
			#going to be a lot of things in that place so just run the shit anyway
	@name = params[:username]



	if @name == "alirm06" || @name == "alison"
		erb(:makeup)
	else
		@info = users[@name]
	erb(:user_profile)
	end	
end