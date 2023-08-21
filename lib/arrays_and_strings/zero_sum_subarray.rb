# Problem:
# Given an array of positive and negative integers, find a contiguous
# subarray that sums to 0
#
# Given: [2, 4, -2, 1, -3, 5, -3]
# Result: [1, 4] since [4, -2, 1, -3].reduce(:+).zero?

class ZeroSumSubarray
  def self.run(arr)
    return nil if arr.nil? || arr.empty?

    hsh = {}
    sum = 0

    arr.each_with_index do |item, index|
      sum += item

      return [0, index] if sum.zero?
      return [hsh[sum] + 1, index] if hsh[sum]

      hsh[sum] = index
    end

    nil
  end
end
