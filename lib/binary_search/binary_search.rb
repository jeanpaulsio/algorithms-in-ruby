class BinarySearch
  def self.run(arr, target:)
    low = 0
    high = arr.length - 1

    while (low <= high)
      mid = low + (high - low) / 2
      
      if arr[mid] == target
        return mid
      elsif arr[mid] > target
        high = mid - 1
      elsif arr[mid] < target
        low = mid + 1
      end
    end
  end
end
