arr = [42, 89, 23, 1]

def search_array(arr, int_search)
    index = 0
    while index < arr.length 
        if arr[index] == int_search 
            return index 
        end 
        index += 1
    end 
end

puts search_array(arr, 1)
puts search_array(arr, 24)

def fib(number)
    fib_arr = [0, 1]
    i = 2 
    while
        i < number 
        fib_arr << fib_arr[-2] + fib_arr[-1]
        i += 1 
    end
    p fib_arr
end

puts fib(6)
puts fib(100).include?(218922995834555169026)

### RELEASE 2:
## We found the following break down of how bubble sort works. 
## Essentially, each element is compared to the one adjacent to it (if array[i] > array[i+1])
## The 'swapped = false' boolean creates a sort of loop so that while array[i] < array[i+1], the swapping continues. 
## The 'loop do' will continue the comparisons until every element is in ascending order.
## So if two compared elements were already in ascending order, bubble sort will move on.

#def bubble_sort(array)
#  n = array.length
#  loop do
#    swapped = false
#    (n-1).times do |i|
#      if array[i] > array[i+1]
#        array[i], array[i+1] = array[i+1], array[i]
#        swapped = true
#      end
#    end
#    break if not swapped
#  end
#  array
#end
#bubble_sort([ -2, 0, 8, 4, -4])