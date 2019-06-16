# Problem:
# You are given a sorted array with a target element. If the element is found,
# return its index. If it's not found, return the index that it would
# be inserted at to keep the array sorted.
#
# Given: [1,3,5,6], target = 5
# Result: 2

class SearchInsertPosition
  def self.run(arr, target:)
    low = 0
    high = arr.length - 1

    while low <= high
      mid = low + (high - low) / 2
      if arr[mid] > target
        high = mid - 1
      elsif arr[mid] < target
        low = mid + 1
      else
        return mid
      end
    end

    return low
  end
end
