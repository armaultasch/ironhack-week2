# spec/string_calculator_spec.rb
require_relative("../lib/string_calculation_spec.rb")

RSpec.describe StringCalculator do
	it "returns 0 for empty string" do
		the_calculator = StringCalculator.new

		#p the_calculator.add("") == 0
		expect( the_calculator.add("")).to eq(0)
	end

	it "returns the number for a single number" do
		the_calculator1 = StringCalculator.new

		expect( the_calculator1.add("6")).to eq(6)
		expect( the_calculator1.add("2")).to eq(2)
	end

	it "returns the number added up for two numbers" do
		the_calculator2 = StringCalculator.new

		expect( the_calculator2.add("6,8")).to eq(14)
		expect( the_calculator2.add("4,3")).to eq(7)
	end
end