# Class Lexiconomitron
class Lexiconomitron 
	def eat_t(string)
		string.gsub('t',"")
	end	
	def shazam(string)
		array = eat_t(string).split(" ")
		final_array = array[0], array[-1]

		final_array.map {|x| 
			x.reverse}
	end
	def oompa_loompa(string)
		array = eat_t(string).split(" ")
		final_array = array.select {|x| x.length<=3}

	end
end 