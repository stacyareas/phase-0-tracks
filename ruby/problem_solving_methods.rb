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

def fib(n)
 arr = [0, 1]
    i = 2
 while i < n
   arr << arr[-1] + arr[-2]
 i += 1  
 end
 p arr
end
fib(16)

fib(100).include?(218922995834555169026)


def insertionSort(alist)
   for index in range(1,len(alist))

     currentvalue = alist[index]
     position = index

     while position>0 and alist[position-1]>currentvalue
         alist[position]=alist[position-1]
         position = position-1

     alist[position]=currentvalue

alist = [54,26,93,17,77,31,44,55,20]
insertionSort(alist)
print(alist)