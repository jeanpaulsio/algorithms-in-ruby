# Problem:
# Given an ordered array with duplicates, find the first occurrence
# of a target element
#
# Given: [0, 1, 2, 3, 4, 5, 5, 6 , 7], target = 5
# Result: 5

class FirstDuplicate
  def self.run(arr, target:)
    return -1 if arr.nil? || arr.empty?

    low = 0
    high = arr.length - 1

    while low <= high
      mid = low + (high - low) / 2

      if arr[mid] > target ||
         (arr[mid] == target && mid > 0 && arr[mid - 1] == target)
        high = mid - 1
      elsif arr[mid] < target
        low = mid + 1
      else
        return mid
      end
    end

    -1
  end
end
