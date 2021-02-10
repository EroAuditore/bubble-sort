
def bubble_sort_by
    arr = ["hi", "hello", "hey"]
    i=0
    while i < arr.length - 1 
        left = arr[i]
        right = arr[i+1]
        value = yield(left, right)
        if  value > 0
            arr[i], arr[i+1] = arr[i+1], arr[i]
            i=0
        else
         i += 1
        end
    end
    puts "sorted_arr"
    puts arr
end
  
bubble_sort_by { |left, right|  left.length - right.length}
