# string_calculation_spec.rb'

class StringCalculator
	def add(numbers_string)
		chars = numbers_string.split(",")
		chars[0].to_i + chars[1].to_i
	end
end