def bubble_sort_by(arr)
  i = 0
  while i < arr.length - 1
    value = yield(arr[i], arr[i + 1])
    if value.positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    else
      i += 1
    end
  end
  arr
end

arr_sorted = bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }

puts 'sorted_arr'
puts arr_sorted
