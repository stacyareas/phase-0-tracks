#Create a method that takes each vowel and switches it out for the next vowel.
def fake_name(name)
	vowels = ["a", "e", "i", "o", "u"]
  name = name.chars
  new_name = name.map do |char|

 # If the character is a vowel is will rotate it for the next vowel in line. 	
    if vowels.include?(char) 
      vowels.rotate(1)[vowels.index(char)]

# Otherwise if the character isn't a vowel it should switch to the next letter
# in the alphabet.     
    else
      char.next
    end
  end
# New name characters show be join together and re-spilt to two spereate strings.  
  new_name.join.split(' ')
end

# Then print results
p fake_name("stacy areas")

# Create an empty array so that the users names can be colleted into
# one variable.
names = []

# Create a loop so that the user can enter in as many names wanted until 
# they enter done which then exit and print the original name and new name.
loop do 
	puts "What is your name? (or type 'done')"
	user_input = gets.chomp
	break if user_input == "done"
	names << user_input
  end 
end


# Got stucked but wanted to turn in something rather then nothing. 