# password_spec.rb
require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
	let :entry do 
		PasswordChecker.new
	end

	describe "length" do
		it "makes sure that password is at least 7 characters" do
			expect(entry.length("Johnathan")).to eq(true)
		end
		it "checks if the password is less than 7 characters" do
			expect(entry.length("alison")).to eq(false)
			
		end
	end

	describe "numbers" do
		it "makes sure there is at least one number" do
			expect(entry.numbers("alison1")).to eq(true)
		end
		it "does not have any numbers" do
			expect(entry.numbers("alison")).to eq(false)
		end
	end

	describe "upcase_letters" do
		it "makes sure there is at least one uppercase letter" do
			expect(entry.upcase_letters("aLison")).to eq(true)
		end
		it "checks if there is not an upcase letter" do
			expect(entry.upcase_letters("alison")).to eq(false)
		end

	end

	describe "downcase_letters" do
		it "makes sure there is at least one downcase letter" do
			expect(entry.downcase_letters("ALIson")).to eq(true)
		end
		it "checks if there is not a downcase letter" do
			expect(entry.downcase_letters("ALISON")).to eq(false)
		end

	end

	describe "symbols" do
		it "sees if there is a symbol" do
			expect(entry.symbols("alison?")).to eq(true)
		end
		it "sees if there is not a symbol" do
			expect(entry.symbols("alison")).to eq(false)
		end
	end

	describe "contains_email" do
		it "makes sure nothing from email is in password" do
			expect(entry.contains_email("alison@gmail.com", "john")).to eq(true)
		end
		it "checks is any email components in password" do
			expect(entry.contains_email("alison@gmail.com", "alison")).to eq(false)
		end

		it "checks is any email components in password" do
			expect(entry.contains_email("alison@gmail.com", "gmail")).to eq(false)
		end
	end

	describe "check_password" do
		it "checks to make sure all conditions are met" do
			expect(entry.check_password("alison@gmail.com", "ironHack1?")).to eq(true)
		end
		it "checks to see if conditions aren't met" do
			expect(entry.check_password("alison@gmail.com", "alison1")).to eq(false)
		end
	end	
end