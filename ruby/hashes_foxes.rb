clients = {}

puts "What is your name?"
clients[:name] = gets.chomp

puts "How old are you?"
clients[:age] = gets.chomp.to_i

puts "How many children do you have?"
clients[:num_of_kids] = gets.chomp.to_i

puts "What color scheme would you like?"
clients[:color] = gets.chomp

p clients

puts "What you like to update any infomation?"
response = gets.chomp

if response == "yes"
	puts "What would you like to update?"
	update = gets.chomp.to_sym
	puts "What would you like to change this to?"
	change = gets.chomp
	clients[update] = change
	p clients
else 
	p clients
end 