# Problem:
# Find the square root of an integer using binary search. If there isn't a perfect
# square, floor it!
#
# Given: 9
# Result: 3

class SquareRoot
  def self.run(i)
    result = 0
    low = 0
    high = i

    while low <= high
      mid = low + (high - low) / 2
      squared = mid * mid

      if squared == i
        return mid
      elsif squared > i
        high = mid - 1
      elsif squared < i
        low = mid + 1
        result = mid
      end
    end

    result
  end
end
