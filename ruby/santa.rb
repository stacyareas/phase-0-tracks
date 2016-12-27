class Santas
	attr_reader :age, :ethnicity
	attr_accessor :gender, :celebrate_birthday, :get_mad_at

	def speak
		puts "Ho, ho, ho! Happppy holidays!"
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
		puts "Ethnicity: #{@ethnicity}"
	end 
end 

reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", 
	"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

age = 15

genders = ["agender", "female", "bigender", 
"male", "gender fluid", "N/A"]

ethnicities = ["afrian-american", "nicaraguan", "japanese", "german",
 "mexican", "irish"]	

santas = Santas.new("female", "nicaraguan")
santas.santas_info
santas.speak
santas.eat_milk_and_cookies("sugar cookie")

santa = []

santa.each do |gender, ethnicity|
	santa << Santas.new(gender, ethnicity)
end 

santa = Santas.new("male", "afrian-american")
santas.santas_info
santa = Santas.new("bigender", "nicaraguan")
santas.santas_info
santa = Santas.new("female", "german")

p santa.age
p santa.ethnicity

santa.gender = "male"
puts "Your gender is now #{santa.gender}"

def random_santa(gender, ethnicity)
	

