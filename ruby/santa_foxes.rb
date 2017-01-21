class Santa
attr_reader :age, :ethnicity
attr_accessor :gender, :celebrate_birthday, :get_mad_at

	@@genders = ["Female", "Male", "Bigender", "Agender", "Gender Fluid", "Transgender"]

	@@ethnicities = ["Mexican", "Japanese", "Indian", "Afrian", "Nicaraguan", "German", 
			"Irish", "Polish", "American", "Hawaiian"]
 		

	def initialize
		@gender = @@genders.sample
		@ethnicity = @@ethnicities.sample 
		@age = Random.rand(140)
	end 

	def speak
		 puts "Ho, ho , ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		 puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday(age)
		@age = age + 1
	end

	def get_mad_at(reindeer_name)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
				"Comet", "Cupid", "Donner", "Blitzen"]
	end

	def new_santa_info
		puts "Gender: #{@gender}, Ethnicity: #{@ethnicity}, Age: #{@age}" 
	end 	

end 

santa = Santa.new

santa_array = []

until santa_array.length == 30
	santa_array.push(Santa.new)
end

santa_array.each { |g, e, a| p g, e, a }








