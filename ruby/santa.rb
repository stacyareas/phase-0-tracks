class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :celebrate_birthday, :get_mad_at

	def speak
puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!"
	end

	@@all_genders = ["agender", "female", "bigender", 
"male", "gender fluid", "N/A"]

	@@all_ethnicities = ["afrian-american", "nicaraguan", "japanese", "german",
 "mexican", "irish"]

	def initialize(gender, ethnicity) 
		@gender = genders
		@ethnicity = ethnicity
		@age = Random.rand(140)
	end
	
	def initialize
		@gender = @@all_genders.sample
		@ethnicity = @@all_ethnicities.sample
		@age = Random.rand(140)
	end

	def info 		
		puts "Gender: #{@gender}, Ethnicity: #{@ethnicity}, Age: #{@age}"
	end 

	def self.create_a_lot_santas(count)
		count.times.map{ Santa.new } 
	end

end 

reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", 
	"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]


santa = Santas.new("female", "nicaraguan")
santa.info
santa.speak
santa.eat_milk_and_cookies("sugar cookie")

santas = [santa]


santa = Santas.new("male", "afrian-american")
santa.info
santas << santa

santa = Santas.new("bigender", "nicaraguan")
santa.info
santas << santa

santa = Santas.new("female", "german")
santas << santa
p santa.age 
p santa.ethnicity

santa.gender = "male"
puts "Your gender is now #{santa.gender}"


santas << Santa.create_a_lot_santas(100)
santas.each { |x| x.info }

