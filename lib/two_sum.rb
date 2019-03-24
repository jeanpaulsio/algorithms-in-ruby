# Problem: Given a sorted array of integers, find two numbers
# that sum to an integer, x

# For example, given: arr = [1, 2, 3, 4, 5], x = 7
# Result: [2, 3]

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