class Puppy

  def initalize
    puts "initializing new puppy instance..."
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(x)
    puts "Woof! "*x
  end
  
  def roll_over
    puts "**roll over**"
  end
  
  def dog_years(x)
    x * 7
  end 
  
  def nap 
    puts "ZZZZZZzzzzzZZZZZZzzzzz"
  end 
end

puppy = Puppy.new 
#have to assign it to a variable. Why???


class Breakfast
#name the new class

  def initialize
    puts "Cracking the eggs and prepping the bacon~~"
  end

  def breakfast_sammy(x, y)
    puts "Here's a tasty #{x}#{y} sandwich"
  end 
  
  def chomper(food)
    puts "#{food}".chop.chop.chop
  end 

end

#Loop portion pseudocode
#Exectute "Breakfast.new" 50 times in a Loop
#Where is the loop? In the class or out of the class?
#Build outside of the class

#Creating the data structure 
#are we creating a hash or an array? 
#create an array (bc this is an unordered list)
#Array INPUT = INSTANCES 
#array.each iterate over the instances with the methods called 
  #array = [int_1, inst_2, 3, 4,]
  #array.each 
  #  then run on the instance chomper
  #  then run on the instance #breakfast_sammy

  
  def looper(int)
    #make a new method that makes instances in a loop
    breakfast_menu = {}
    #create the hash to store our instances
    idx = 0 #set the parameter by index
    while idx < int.to_i+1 #this is how compare index no. to argument
    breakfast_menu["meal_#{idx}"] = Breakfast.new #add new instance to hash w key name meal #(special number from index)
    idx += 1 
  end
  return breakfast_menu
  end 

breakfast_hash = looper(20)

#p breakfast_hash

#breakfast_array = []

#idx = 0
#while idx <= 50
#  breakfast_array.push(Breakfast.new)
#  idx += 1 
#end

#p breakfast_array

def iterator(hash)
  hash.each do |key, value|#take this block info below (key and key)
    hash[key].breakfast_sammy("x", "y") #give arguments(as strings)
    hash[key].chomper("food") #this method can call the methods from the class above because the info for this is snuck in with the hash when we pass it through
  end 
end 

iterator(breakfast_hash)

