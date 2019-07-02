# Problem:
# Given an array of integers, print all combinations of size x
#
# Given: [1, 2, 3], x = 2
# Result: [1, 2], [1, 3], [2, 3]

class PrintCombos
  def self.run(arr, buffer, start_index, buffer_index)
    return "" if arr.empty? || buffer.length > arr.length

    if buffer_index == buffer.length
      p buffer
      return
    end

    if start_index == arr.length
      return
    end

    start_index.upto(arr.length - 1) do |i|
      buffer[buffer_index] = arr[i]
      run(arr, buffer, i + 1, buffer_index + 1)
    end
  end
end
