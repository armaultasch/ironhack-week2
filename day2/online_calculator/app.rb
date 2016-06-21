# app.rb
require "sinatra"
require_relative("lib/calculator.rb")
# my_calc = Calculator.new

get "/home" do 
	erb(:home)
end

post "/calculate" do
	my_calc = Calculator.new
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	operation = params[:operation]
	if operation == "add"
		result = my_calc.add(first, second).to_s
		"The addition of #{first} and #{second} is #{result}"

	elsif operation == "subtract"
		result = my_calc.subtract(first, second).to_s
		"The subtraction of #{first} and #{second} is #{result}"
	elsif operation == "multiply"
		result = my_calc.multiply(first, second).to_s
		"The multiplication of #{first} and #{second} is #{result}"
	elsif operation == "divide"
		result = my_calc.divide(first, second).to_s
		"The division of #{first} and #{second} is #{result}"
	end
end

# get "/add" do 
# 	erb(:add)
# end

# post "/calculate_add" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	#my_calc.add(first, second)
# 	result = first + second
# "#{first} + #{second} = #{result}"
# end

# get "/subtract" do 
# 	erb(:subtract)
# end

# post "/calculate_subtract" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = first - second
# "#{first} - #{second} = #{result}"
# end

# get "/multiply" do 
# 	erb(:multiply)
# end

# post "/calculate_multiply" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = first * second
# "#{first} * #{second} = #{result}"
# end

# get "/divide" do 
# 	erb(:divide)
# end

# post "/calculate_divide" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = first / second
# "#{first} / #{second} = #{result}"
# end




