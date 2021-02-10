##define method

def bubble_sort(arr) 
    i=0
    while i < arr.length - 1
        #compare left-rigth side
        if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
            i=0
        else
            i += 1
        end
    end
    return arr
end



sorted_arr = bubble_sort([10,2,4,1])

puts("array sorted: ")
puts sorted_arr