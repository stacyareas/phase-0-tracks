class Santa
attr_reader :age, :ethnicity
attr_accessor :gender, :celebrate_birthday, :get_mad_at
	
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
				"Comet", "Cupid", "Donner", "Blitzen"]

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
	end

	def speak
		 puts "Ho, ho , ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		 puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday(age)
		@age += 1
	end

	def get_mad_at(reindeer_name)
		reindeer_ranking.insert(reindeer_ranking, )

	end
end 

santa = Santa.new("male", "black")
p santa.speak

new_santas = []

new_santas << Santa.new("agender", "black")
new_santas << Santa.new("female", "Latino")
new_santas << Santa.new("bigender", "white")
new_santas << Santa.new("male", "Japanese")
new_santas << Santa.new("female", "prefer not to say")

