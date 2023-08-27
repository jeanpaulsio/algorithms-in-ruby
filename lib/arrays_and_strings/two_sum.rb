# Problem:
# Given a sorted array of integers, find two numbers in the array
# that sum to a given integer target
#
# Given: array = [1, 2, 3, 5, 6, 7]; target = 11
# Result: [5, 6]

class TwoSum
  def self.run(array, target:)
    return nil if array.length < 2

    i = 0
    j = array.length - 1

    while i < j
      current_sum = array[i] + array[j]

      if current_sum < target
        i += 1
      elsif current_sum > target
        j -= 1
      else
        return [array[i], array[j]]
      end
    end
  end
end
