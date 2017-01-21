#module Shout

#	def self.yell_angrily(words)
#		words + "!!!" + " :["
#	end

#	def self.yelling_happily(words)
#		words + "!!!" + " :]"
#	end

#end 

#p Shout.yelling_happily("I love you")
#p Shout.yell_angrily("I hate you")


module Shout 
	def shouting_things(food_type)
		puts "Give me #{food_type}! I AM HUNGRY!!!!"
end 
end

	class Cats
		include Shout
	end

	class Dogs
		include Shout
	end

cats = Cats.new
cats.shouting_things("tuna treats")	

dogs = Dogs.new
dogs.shouting_things("bacon bits")