# password_checker.rb
class PasswordChecker
	# attr_reader :email, :password
	# def initialize(email, password)
	# 	@email = email
	# 	@password = password
	# end

	def length(password)
		password.length >= 7
	end

	def numbers(password)
		if password =~ /[0-9]+/
		true
		else 
			false
		end
	end

	def upcase_letters(password)
		if password =~ /[A-Z]+/
		true
		else 
			false
		end
	end
	def downcase_letters(password)
		if password =~ /[a-z]+/
		true
		else 
			false
		end
	end

	def symbols(password)
		if password =~ /^\w*$/ 
						##everything except special characters
		false
		else 
		true
		end

	end

	def contains_email(email, password)
		gmail = email.split("@")[1]
		if (password.include?(email.split("@")[0]) || password.include?(email.split("@")[1]))
			false
			
		elsif password.include?(gmail.split(".")[0]) || password.include?(gmail.split(".")[1])
			false
		else true
		end
	end
		attr_reader :email, :password
	def check_password(email, password)
		if (contains_email(email, password)) == true && 
			(symbols(password) == true) && 
			(downcase_letters(password)) == true && 
			(upcase_letters(password)) == true && 
			(numbers(password)) == true && 
			(length(password)) == true
			true
		else 
			false
		end
	end
end