# Problem:
# Implement Kadane's Algorithm
# Given an array of positive and negative integers, find the contiguous
#   subarray with the largest sum
#
# Given: [1, 2, -1, 2, -3, 2, -5]
# Result: 4, since [1, 2, -1, 2].reduce(:+) = 4

class KadanesAlgorithm
  def self.run(arr)
    max_sum = 0
    max_ending_here = 0

    arr.each do |item|
      max_ending_here = [0, max_ending_here + item].max
      max_sum = [max_ending_here, max_sum].max
    end

    max_sum
  end
end
