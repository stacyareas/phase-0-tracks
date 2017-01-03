# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # add items to your list
  # set default quantity
  # print the list to the console 
  # [can you use one of your other methods here?]
# output: list to be stored in a hash with the item name and quantity of that item

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add items to the already existing list
  # give new items quantity
  # print the new list 
# output: updated list with new items and quantity that will be stored in already existing hash

# Method to remove an item from the list
# input: taking away items and quantity from the existing list
# steps:
  # enter items that are wanting to be removed 
  # print new list with removed items
# output: updated list with removed items and quantity that will be stored in already existing hash

# Method to update the quantity of an item
# input: quantity
# steps: 
  # update quantity for specific items 
  # print list
# output: updated list of the updated quantity that will be stored in already existing hash

# Method to print a list and make it look pretty
# input: list, item name, and optional quantity
# steps:
  # orginized items and quantity
  # set up output to look nice 
# output: grocery list that look nice

def create_list(list)
    list = list.split(' ')
    shopping_list = {}
    list.each { |item| shopping_list[item.to_sym]= 1 }
    shopping_list
end 

p grocery_items = create_list("kale avocados bananas celery milk")

def add(list, item, quantity)
    list[item.to_sym] = quantity
    list  
end

p add(grocery_items, "lemonade", 2)
p add(grocery_items, "tomatoes", 3)
p add(grocery_items, "onions", 1)
p add(grocery_items, "ice_cream", 4)

def remove(list, item)
    list.delete(item.to_sym)
    list
end 

p remove(grocery_items, "lemonade")

def update_item(list, item, quantity)
    list[item.to_sym] = quantity
    list
end 

p update_item(grocery_items, "ice_cream", 1)

def my_list(list)
    list.each { |item, quantity| puts "Items: #{item} --- Qty: #{quantity}" }
end

my_list(grocery_items)    