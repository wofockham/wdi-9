def bubble_sort( arr )
  top = arr.length - 1

  # Repeat until every element has been processed.
  until top <= 0
    top.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i] # Swap elements i and i + 1
      end
    end

    top -= 1 # Last element is now in place and can be ignored.
  end

  arr
end
