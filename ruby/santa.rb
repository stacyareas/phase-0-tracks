class Santas 
	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!"
	end
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
	end
	def santas_info
		puts "Gender: #{@gender}" 
		puts "Ethnicity #{@ethnicity}"
	end
end 

santas = Santas.new("female", "latina")
santas.santas_info
santas.speak
santas.eat_milk_and_cookies("sugar cookie")
santas.santas_info