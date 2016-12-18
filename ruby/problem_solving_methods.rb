arr = [20, 40, 60, 80, 100]

def look_for_array(arr, h)
	index = 0 
while index < arr.length	
	if arr[index] == h   
	return index	
end
	index += 1
end
end 

p look_for_array(arr, 60)

arr = [20, 40, 60, 80, 100]

def look_for_array(arr, h)
 arr.each_index do 
   |number| if arr[number] == h
     return number
 end 
end
end

p look_for_array(arr, 80)

def fib_num(n)
	return n if n <= 1
	fib_num(n-1) + fib_num(n-2)
end

p fib_num(20)
