def calculate(a, b , operator)
	if operator == "+"
		a + b
	elsif operator == "-"
		a - b
	elsif operator == "/"
		a / b
	elsif operator == "*"
		a * b 
	else
		exit
	end
end 

p calculate(4, 5, "+") == 9
p calculate(10, 7, "-") == 3  

new_hash  = {}

while true
	puts "What calculation would you like to use?"
	calculation = gets.chomp
	if calculation == 'exit'
		exit
	end
		array = calculation.split(' ')
		new_hash[calculation] = calculate(array[0].to_i, array[2].to_i, array[1])
		new_hash.each do |answer|
		answer << new_hash
		end
	p new_hash	
end 

