user_names = {}

def fake_name(name)
	vowels = ["a", "e", "i", "o", "u"]
  name = name.chars
  new_name = name.map do |char|
    if vowels.include?(char) 
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  new_name.join.split(' ').reverse
end

puts "what is your name?"
name = gets.chomp

user_names [:name] = name
user_names [:new_name] = fake_name

while true
	puts "Another name?"
	name2 = gets.chomp
if name == "exit"
	break
end	
end

