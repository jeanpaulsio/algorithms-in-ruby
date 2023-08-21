# Problem:
# Do a binary search on an array with unknown length.
#   Assume that you can't use that there are no nil values in the array
#   since Ruby does not throw an ArrayOutOfBoundsException if you try to
#   access an index that does not exist.
#
#   arr = [1, 2, 3]
#   arr[50] => nil

class UnknownLength
  def self.run(arr, target:)
    return -1 if arr.empty?

    # Start with two pointers. High will be calculated but it is unknown for now
    low = 0
    high = 0

    upper_limit = 1
    loop do
      break if arr[upper_limit].nil?

      upper_limit *= 2
    end

    # Do a binary search to figure out the array's length
    # By the end of this iteration, `high` will be calculated for the final BS
    lower_limit = upper_limit / 2
    while lower_limit <= upper_limit
      mid_limit = lower_limit + (upper_limit - lower_limit) / 2

      if arr[mid_limit].nil?
        upper_limit = mid_limit - 1
        next
      end

      high = mid_limit if arr[mid_limit + 1].nil?

      lower_limit = mid_limit + 1
    end

    # Now we have our boundaries and can do a good ol BS
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

    -1
  end
end
