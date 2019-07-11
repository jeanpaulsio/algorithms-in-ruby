# Problem:
# Given an unsorted array of integers, find the shortest subarray, that if sorted
# results in the entire array being sorted
#
# Given:  [1, 2, 4, 5, 3, 5, 6, 7, 9]
# Result: [2, 4]

class ShortestSubarrayUnsorted
  def self.run(arr)
    i = 0 # dip   - traverse from left
    j = arr.length - 1 # bump  - traverse from right

    # find dip
    arr.each do |item|
      if i == arr.length - 1
        return # return early if array is sorted
      end

      break if arr[i + 1] <= item
      i += 1
    end

    # find bump
    arr.reverse_each do |item|
      break if arr[j - 1] > item
      j -= 1
    end

    # find min and max values between dip and bump
    # we need this to figure out how much to expand the dip and bump
    min = arr[i..j].min
    max = arr[i..j].max

    # expands the dip left
    i -= 1 while (i > 0 && arr[i - 1] > min)

    # expand the bump right
    j += 1 while (j < arr.length - 1 && arr[j + 1] < max)

    return [i, j]
  end
end
