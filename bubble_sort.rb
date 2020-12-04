def bubble_sort (arr)
    completed = false
    until completed == true do
      swapped = false
      arr.each_index do |idx|
        if idx+1 < arr.length 
          if arr[idx] > arr[idx+1]
            # we have to swap these two values
            value_to_swap = arr[idx]
            arr[idx] = arr[idx+1]
            arr[idx+1] = value_to_swap
            swapped = true
          end
        else
          !swapped ? completed = true : completed = false
        end
      end
    end
    return arr
  end
  # simulation 
  p bubble_sort([5,45,4,8,6])
  # expected retun value
  # => [2,5,6,8,45]