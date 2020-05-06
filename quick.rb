def quicksort(array)
    if array.length > 1 
        pivot = array.pop
        lesser = [] 
        greater = []

        array.each do |x|
            if x <= pivot 
                lesser << x 
            else 
                greater << x 
            end 
        end 
        array = quicksort(lesser) + [pivot] + quicksort(greater)
    end 
    array 
end 

arr = [2,4,6,21,6,2,5,7,8]
p quicksort(arr)