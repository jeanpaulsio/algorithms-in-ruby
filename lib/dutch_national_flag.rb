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