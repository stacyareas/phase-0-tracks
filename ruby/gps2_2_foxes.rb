# Release 0: Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash
  # get string
  # split string into items
  # add each item to the hash as a key
  # set default quantity = 1
  # call print method
# output: grocery list hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  #  add item as key
  #  add item's quantity as value
  #  call print method
# output: grocery list hash

# Method to remove an item from the list
# input: grocery hash list, item to remove, quantity to subtract
# steps:
  # subtract item quantity or delete item
  # call print method
# output: grocery list hash

# Method to update the quantity of an item
# input: list, item, updated quantity
# steps:
  # change a grocery hash key value
  # call print method
# output:

# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
  # format the hash
  # iteration
# output: print the formatted list

# Release 1: Initial Solution
def create_list(list_string)
  list_array = list_string.split(' ')
  grocery_list = {}
  list_array.each {|item| grocery_list[item] = 1}
  grocery_list
end

def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end

def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end

def print_list(grocery_list)
  grocery_list.each {|item, quantity| puts "grocery item: #{item} x #{quantity}"}
end

# driver code
# Release 2: Test your solution
test_list = create_list("carrots apples cereal pizza")
p test_list == {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1}

add_item(test_list, "bread", 1)
p test_list == {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1, "bread"=>1}

remove_item(test_list, "cereal")
p test_list == {"carrots"=>1, "apples"=>1, "pizza"=>1, "bread"=>1}

update_quantity(test_list, "pizza", 5)
p test_list == {"carrots"=>1, "apples"=>1, "pizza"=>5, "bread"=>1}

print_list(test_list)

## Release 4: Reflect
# What did you learn about pseudocode from working on this challenge?
####helpful, cheating, functional decomposition, 

# What are the tradeoffs of using arrays and hashes for this challenge?
####hashes were able store the item names as keys & the quantity as values
####but arrays would order items by index for ranking/priority

# What does a method return?
####what its body evaluates to

# What kind of things can you pass into methods as arguments?
####parameters that get passed to methods as arguments can be any data type

# How can you pass information between methods?
####creating a variable to compare with the return of multiple methods
####data structures in general allow methods to interact

# What concepts were solidified in this challenge, and what concepts are still confusing?
####using methods to manipulate hashes & testing their returns
