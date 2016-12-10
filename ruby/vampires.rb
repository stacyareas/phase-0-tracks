puts "What is your name?"
first_name = gets.chomp

puts "How old are you."
age = gets.chomp

puts "What year were you born?"
year = gets.chomp

puts "Our cafeteria servers galic bread, would you like some?(yes,no)"
preference = gets.chomp

puts "Would you like to enroll in healthcare?(yes,no)"	
healthcare = gets.chomp

current_year = 2016
age_1 = current_year - year

if age == "age_1"
	puts "Probaly not a vampire."
elsif preference == "yes" && healthcare == "yes"
	puts "Probaly not a vampire."
elsif age != "age_1"
	puts "Probaly a vampire."
elsif preference == "maybe" && healthcare == "maybe"
	puts "Probaly a vampire."
elsif age != "age_1"
	puts "Almost certainly a vampire."
elsif preference == "no" && healthcare == "no"
	puts "Almost certainly a vampire."
elsif first_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
	
			
			
			

	
			
		
		
		


			
			



							
			
			
		
	
			
	






