def bubble_sort_by(arr)
  puts arr if arr.length <= 1
  n = arr.length - 1
  loop do
    swapped = false
    n.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
    break if swapped == false
  end
  p arr
end

bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end