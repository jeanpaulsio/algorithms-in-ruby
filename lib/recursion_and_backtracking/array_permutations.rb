# Problem:
# Given an array, print all permutations of size x
# You can assume the values of the array are unique
#
# Given: [1, 2, 3], x = 2
# Result: [1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]
class ArrayPermutations
  def self.run(arr, buffer, buffer_index, buffer_check)
    return "" if arr.empty?

    if buffer.length == buffer_index
      p buffer
      return
    end

    arr.each_with_index do |i, index|
      unless buffer_check[index]
        buffer[buffer_index] = i
        buffer_check[index] = true

        run(arr, buffer, buffer_index + 1, buffer_check)
        buffer_check[index] = false
      end
    end
  end
end
