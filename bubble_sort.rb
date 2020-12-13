arr = [6, 5, 3, 1, 8, 7, 2, 4]

def bubble_sort(arr)
	sorted = false
	until sorted == true do
		exchanged = false
		arr.each_index do |i|
			break if i == arr.length-1;
			curr_value = arr[i]
			next_value = arr[i + 1]
			if curr_value > next_value
				arr[i] = next_value
				arr[i + 1] = curr_value
				exchanged = true
			end
		end
		sorted = !exchanged ? true : false;
		p arr
	end
	arr
end

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
  arr
end

bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end


