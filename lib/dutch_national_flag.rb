# Problem:
# Given an array of integers an index i, rearrange the array in the following order:
# [
#   elements <= arr[i],
#   elements == arr[i],
#   elements >= arr[i]
# ]
#
# Given:  [3, 5, 2, 6, 8, 4, 4, 6, 4, 4, 3], i = 5
# Result: [3, 3, 2, 4, 4, 4, 4, 6, 8, 6, 5]
#
# Explanation:
# Initialize 3 pointers: two at the start, one at the end
#   our pointers will be called lo, mid, hi
# We will always be looking at the mid + 1 item to be processed
# When arr[mid + 1] < target, swap arr[mid + 1] and arr[lo + 1]
#   also increment mid and lo pointers
# When arr[mid + 1] > target, swap arr[mid + 1] and arr[hi - 1]
#   also decrement hi pointer
# When arr[mid + 1] = target, increment the mid pointer

class DutchNationalFlag
  def self.run(arr, index)
    lo  = -1
    mid = -1
    hi  = arr.length

    target = arr[index]

    while (mid + 1 < hi)
      if arr[mid + 1] < target
        arr[mid + 1], arr[lo + 1] = arr[lo + 1], arr[mid + 1]
        lo += 1
        mid += 1
      elsif arr[mid + 1] > target
        arr[hi - 1], arr[mid + 1] = arr[mid + 1], arr[hi - 1]
        hi -= 1
      elsif arr[mid + 1] == target
        mid += 1
      end
    end

    arr
  end
end