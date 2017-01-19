class Puppy

	 def initialize
	 	puts "Initializing new puppy instance......"	
	 end

	 def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
	 end

	 def speak(i)
	 	puts "Woof! "* i  
	 end

	 def roll_over
	 	"*rolls over*"
	 end

	 def dog_years(i)
	 	i * 7
	 end

	 def sleep
	 	"*ZzZzZzzzzzzz*"
	 end	
end 

puppy = Puppy.new
p puppy.fetch("ball")
p puppy.speak(9)
p puppy.roll_over
p puppy.dog_years(5)
p puppy.sleep 


class Cats
	
	def initialize
		puts "Initializing new cat instance......"
	end	
	
	def bring_dead_things
		"Drops dead mouse."
	end	

	def speak
		"*MEOWS*"
	end	
end	

cats = Cats.new

cats_array = []
idx = 0 
while idx <= 50
	cats_array.push(Cats.new)
	idx += 1
end


cats_array.each do |i|
	p cats.bring_dead_things
	p cats.speak
end 






