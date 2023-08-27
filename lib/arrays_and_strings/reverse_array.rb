# Problem:
# Given an array, reverse the order of its elements
#
# Given: [3, 5, 2, 5, 2, 3, 9]
# Result: [9, 3, 2, 5, 2, 5, 3]

class ReverseArray
  def self.run(array)
    i = 0
    j = array.length - 1

    until i == j || i > j
      # Swap the elements of the array
      temp = array[i]
      array[i] = array[j]
      array[j] = temp

      i += 1
      j -= 1
    end

    array
  end
end
