# Problem:
# Given an array of positive integers, find a contiguous subarray
# that sums to a given number, X
#
# Given: [13, 1, 4, 5, 3, 5, 1, 2, 4], 12
# Result: [2, 4] since [4, 5, 3].reduce(:+) == 12

class SlidingWindow
  def self.run(arr, target:)
    return nil if arr.nil? || arr.empty?

    i = 0
    j = 0
    sum = arr[i]

    i.upto(arr.length) do
      if i > j
        j = i
        sum = arr[i]
      elsif sum < target
        if j + 1 < arr.length
          j += 1
          sum += arr[j]
        else
          next
        end
      elsif sum > target
        sum -= arr[i]
        i += 1
      else
        return [i, j]
      end
    end

    nil
  end
end
