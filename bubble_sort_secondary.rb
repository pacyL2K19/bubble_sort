arr = [6, 5, 3, 1, 8, 7, 2, 4]
# arr = [5,45,4,8,6]

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
	# p arr
	arr
end

bubble_sort(arr)