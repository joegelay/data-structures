def quicksort(array) 
    if array.length > 1
        pivot = array.pop
        less = []
        greater = []

        array.each do |x|
            if x <= pivot
              less << x
            else
              greater << x
            end
        end

        array = quicksort(less) + [pivot] + quicksort(greater)
    end
   array 
end

arr = [5,7,3,7,8,9,4,1,7,3]
p quicksort(arr)




