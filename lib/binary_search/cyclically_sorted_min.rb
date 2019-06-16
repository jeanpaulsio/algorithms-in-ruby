# Problem:
# Given a cyclically sorted array, find the minimum value.
# Assume that the array contains no duplicates
#
# Given: [4, 5, 6, 1, 2, 3]
# Result: index 3

class CyclicallySortedMin
  def self.run(arr)
    return -1 if arr.empty?

    low = 0
    high = arr.length - 1
    pivot = arr[high]

    while low <= high
      mid = low + (high - low) / 2

      if arr[mid] <= pivot && (mid.zero? || arr[mid - 1] > arr[mid])
        return mid
      elsif arr[mid] > pivot
        low = mid + 1
      elsif arr[mid] < pivot
        high = mid - 1
      end
    end
  end
end
