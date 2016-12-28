puts "how many employees?"
employees_count = gets.chomp.to_i

1..employees_count.each 
  puts "What is your name?"
    name = gets.chomp
  puts "How old are you?"
    age_1 = gets.chomp.to_i
  puts "What year were you born?"
    year = gets.chomp.to_i
  puts "How about garlic?(yes,no)"
    answer_1 = gets.chomp
  puts "Would you like to enroll in healthcare(yes,no)"
    answer_2 = gets.chomp
  
  correct_age = 2016 - year.to_i == age_1.to_i
  
  alergy = ""
  
  until alergy == "sunshine" 
    puts "What are your allergies?"
    alergy = gets.chomp

  if alergy == "sunshine"
    puts "Probably a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  elsif correct_age && answer_1 == "yes" || correct_age && answer_2 == "yes"
    puts "Probably not a vampire"
  elsif !correct_age && answer_1 == "no" || !correct_age && answer_2 == "yes"
    puts "Probably a vampire"
  elsif !correct_age && answer_1 == "no" && answer_2 == "no"
    puts "Almost certianly a vampire"
  else
    puts "Results inconclusive"
  end
end
puts "Actually never mind! What do those questions have to do with anything. Let's all be friends."

			
			
			

	
			
		
		
		


			
			



							
			
			
		
	
			
	






