require "sinatra"
require "sinatra/reloader"
require "pry"

enable(:sessions)

get "/" do 
	erb(:home)
end

get "/session_test" do
	@current_session = session
	erb(:display_the_session)
end	

get "/session_add/:value" do
	new_value = params[:value]
	session[:new_session_value] = new_value

	redirect to("/session_test")
end

##profile page
get "/profile" do
	if session[:username] != nil
		#showing custom profile
	else
		#show default profile
	end
end


post "/submit_login" do
	#check if username and password are correct
	session[:username] = the_username
end


get "/party" do
	status(418)
	erb(:party)
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
		#binding.pry
		#its going to stop and show everything that is available
	erb(:user_profile)
	end	
end