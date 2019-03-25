# Problem:
# Given a sorted array of integers, find two numbers that sum to an integer, x
#
# Given:  [1, 2, 3, 4, 5], 7
# Result: [2, 3]
#
# Explanation:
# We initialize a pointer at the start (i) and at the end (j)
# Until the start-pointer is no longer less than the end-pointer, we calculate
#   the sum of arr[i] and arr[j]
# Since the array is sorted, we know which pointer to move if
#   the sum is either too high or too low

class TwoSum
  def self.run(arr, target)
    i = 0
    j = arr.length - 1

    while (i < j)
      sum = arr[i] + arr[j]
      i += 1 if sum < target
      j -= 1 if sum > target
      return [i, j] if sum == target
    end

    return nil
  end
end