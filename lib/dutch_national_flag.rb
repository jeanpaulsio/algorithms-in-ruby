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
    _start = -1
    _mid = -1
    _end = arr.length

    target = arr[index]

    while (_mid + 1 < _end)
      if arr[_mid + 1] < target
        arr[_mid + 1], arr[_start + 1] = arr[_start + 1], arr[_mid + 1]
        _start += 1
        _mid += 1
      elsif arr[_mid + 1] > target
        arr[_end - 1], arr[_mid + 1] = arr[_mid + 1], arr[_end - 1]
        _end -= 1
      elsif arr[_mid + 1] == target
        _mid += 1
      end
    end

    arr
  end
end