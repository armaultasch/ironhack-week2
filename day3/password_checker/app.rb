# app.rb
require "sinatra"
require_relative("lib/password_checker.rb")


get "/" do
	erb(:home)
	
end

get "/congrats" do
	erb(:congrats)
end


post "/login" do
new_check = PasswordChecker.new
new_email = params[:email]
new_password = params[:password]
if new_check.check_password(new_email, new_password) == true
	redirect to "/congrats"
else
	redirect to "/"


end
end
