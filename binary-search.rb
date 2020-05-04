# return -1 if value is not in array

def binary_search(input_array, value)
    low = 0 
    high = input_array.length - 1
    while (low <= high)
        mid = (low + high) / 2
        if input_array[mid] == value 
            return mid 
        elsif input_array[mid] < value 
            low = mid + 1 
        else 
            high = mid - 1
        end 
    end 
    return - 1 
end 

# Pseudocode 

# Find the value and the halfway point in the array 
#   If halfway point == value, return index of halfway point
#   else if halfway value is < search value, new_array = 2nd half of array
#   else new_array = 1st half of array 
#   repeat 
#   return -1 if nothing found

# [1,2,3,4,5,6,7,8,9]