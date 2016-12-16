clients = {}

puts "What is your name?"
name = gets.chomp 

puts "How old are you?"
age = gets.chomp

puts "How many kids do you have?"
kids = gets.chomp

puts"What decor color theme would you like?"
decor_color = gets.chomp

clients [:name] = name
clients [:age] = age
clients [:kids] = kids
clients [:decor_color] = decor_color

p clients

puts "Would you like to update any of your information?"
answer = gets.chomp

if answer == "yes"
	puts "Which one would you like to update?"
    update = gets.chomp
    puts "What would you like to change it to?"
	change = gets.chomp
	clients [:"#{update}"] = change
else 
	"exit"
end


p clients





