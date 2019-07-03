# Problem:
# Given an array of integers, print all its subsets
#
# Given: [1, 2, 3]
# Result: [], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]

class ArraySubsets
  def self.run(arr, buffer, next_index, buffer_index)
    return "" if arr.empty? || buffer.length > arr.length

    print_buffer(buffer, buffer_index)
    if buffer.length <= buffer_index
      return
    end

    if arr.length == next_index
      return
    end

    next_index.upto(arr.length - 1) do |i|
      buffer[buffer_index] = arr[i]
      run(arr, buffer, i + 1, buffer_index + 1)
    end
  end

  private

    def self.print_buffer(buffer, buffer_index)
      p buffer[0, buffer_index]
    end
end

