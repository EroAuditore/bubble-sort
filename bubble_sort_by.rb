def bubble_sort_by(arr)
  i = 0
  while i < arr.length - 1
    if yield(arr[i], arr[i + 1]).positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    else
      i += 1
    end
  end
  arr
end

sorted_arr = bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
puts 'sorted_arr'
puts sorted_arr
