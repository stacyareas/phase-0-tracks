puts "What is the hamsters name?"
hamsters_name = gets.chomp 

puts "Your name is #{hamsters_name}."

puts "How loud is you hamsters?(1-10)"
loud = gets.chomp

while (loud.to_i < 1 || loud.to_i> 10)
	puts "enter numbers 1 to 10 only."
	loud = gets.chomp 
end
 loud.to_i

puts "Your hamsters is level #{loud} of loudness."

puts " What is the color of your hamsters fur?(brown,white,black)"
fur_color = gets.chomp

while !(fur_color == "brown" ||fur_color == "white" || fur_color == "black")
	puts "try again"
	fur_color = gets.chomp
end 

puts "Your hamsters fur is #{fur_color}."

puts "Do you think you hamsters is good for adoption?(n/y)"
hamsters_qul = gets.chomp

while !(hamsters_qul == "y" || hamsters_qul == "n")
	puts "please enter y or n"
	hamsters_qul = gets.chomp
end 

puts "About how old do you think your hamster is?"
age = gets.chomp

while (age.to_i <= 0)
	puts "enter positive number only."
	age = gets.chomp 
end
 age.to_i

puts "Your hamster is #{age} years of age."


