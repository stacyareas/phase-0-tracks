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
 


