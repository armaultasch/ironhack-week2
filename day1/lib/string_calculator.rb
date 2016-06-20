#lib/string_calculator.rb

class StringCalculator
	def add(numbers_string)
		if numbers_string.length == 0
				0
		elsif numbers_string.length == 1
			numbers_string.to_i do |x|
				x.numbers_string
			end
		elsif numbers_string.length > 1
			split_string = numbers_string.split(",")
				sum = 0
			split_string.each do |x|
				sum += x.to_i
			end
			sum

		end
			# split_string.reduce(0.0) do |sum, x|
			# 	sum + x.split_string
			# end


	end
end


# class StringCalculator
# 	def add(numbers_string)
# 		chars = numbers_string.split(",")
# 		chars[0].to_i + chars[1].to_i
# 	end
# end
