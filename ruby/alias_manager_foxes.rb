def fake_name(name)
  name = name.reverse.split('')
  vowels = ["a", "e", "i", "o", "u"]
  new_name = name.map do |char|
    if vowels.include?(char) 
       vowels.rotate(1)[vowels.index(char)]
    else
      char.next
    end
  end  
  new_name.join.split(' ') 
end 

alias_name = {}

while true
  puts "Enter your name please."
  user_name = gets.chomp 

  if user_name == "done"
      alias_name.each { |k, v| puts "#{k} is also known as #{v}" }
      exit 
  end
      end_results = user_name
      alias_name[user_name] = fake_name(end_results)
end  
