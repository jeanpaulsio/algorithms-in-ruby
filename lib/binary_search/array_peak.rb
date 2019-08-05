# Problem:
# Given an array of integers, find a peak element. An element is a peak
# if it is larger than both of its neighbors
#
# Given: [5, 10, 20, 15]
# Result: 20

class ArrayPeak
  def self.run(arr)
    return nil if arr.empty?
    return arr.first if arr.length == 1

    low = 0
    high = arr.length - 1

    # Corner cases
    return arr[low] if arr[low] > arr[low + 1]
    return arr[high] if arr[high] > arr[high - 1]

    while low <= high
      mid = low + (high - low) / 2
      if arr[mid] > arr[mid + 1] && arr[mid] > arr[mid - 1]
        return arr[mid]
      elsif arr[mid] < arr[mid - 1]
        high = mid
      elsif arr[mid] < arr[mid + 1]
        low = mid
      end
    end
  end
end
