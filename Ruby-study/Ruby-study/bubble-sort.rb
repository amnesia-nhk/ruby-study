def bubble_sort(array)
  loop do
    swapped = false                          # assume nothing needs swapping

    (array.length - 1).times do |i|         # i goes from 0 to second-to-last
      if array[i] > array[i + 1]            # are neighbours in wrong order?
        array[i], array[i + 1] = array[i + 1], array[i]  # swap them
        swapped = true                       # mark that a swap happened
      end
    end

    break if !swapped                        # stop looping when no swaps happened
  end

  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2]).inspect
