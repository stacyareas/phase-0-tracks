# To start we need an empty hash because we don't 
# have user yet. We can do this by 
# setting the variable to equal an empty hash using - {} -
clients = {}

# We need to promnt the user for a bit of information so we could store 
# them in a hash.
puts "What is your name?"
name = gets.chomp 

puts "How old are you?"
age = gets.chomp

puts "How many kids do you have?"
kids = gets.chomp

puts"What decor color theme would you like?"
decor_color = gets.chomp

# Once we have set a value to our variables we can incorporate them into 
# our hash using our hash variable with - [] -  set to equal the values we get
# from the user. 
clients [:name] = name
clients [:age] = age
clients [:kids] = kids
clients [:decor_color] = decor_color

# We then print the hash so the user can see their results.
p clients

# If the user makes a mistake or wants to change one of their inputs 
# we want to promnt them with a question and recieve an answer.
puts "Would you like to update any of your information?"
answer = gets.chomp

# If they say yes we can ask them what they would want to update and 
# what they would like to change it to. 
# We also want to receive their new input so that we can update the new change
# to replace to old input.
# Otherwise exit
if answer == "yes"
	puts "Which one would you like to update?"
    update = gets.chomp
    puts "What would you like to change it to?"
	change = gets.chomp
	clients [:"#{update}"] = change
else 
	"exit"
end

# Then we can print the new results.
p clients





