# Problem:
# Given a sorted array in non-decreasing order, return an array of squares
# of each number, also in non-decreasing order
#
# How can you do it in O(n) time?
#
# Given: [-4, -2, -1, 0, 3, 5]
# Result: [0, 1, 4, 9, 16, 25]

class SortedSquares
  def self.run(array)
    return if array.empty?

    i = 0
    j = array.length - 1
    result = []

    until i > j
      if array[i].abs > array[j].abs
        result.prepend(array[i]**2)
        i += 1
      else
        result.prepend(array[j]**2)
        j -= 1
      end
    end

    result
  end
end
