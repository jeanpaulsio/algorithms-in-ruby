# Problem:
# Given an array of integers A, find the sum of each sliding window, K
#
# Given: [1, 2, 4, 5, 7], K = 2
# Result: [3, 6, 9, 12]

require_relative "queue"

class SlidingWindowSums
  def self.run(arr:, k:)
    result = []
    q = Queue.new(size: k)
    sum = 0

    arr.each_with_index do |n, _index|
      if q.q_length < k
        q.enqueue(n)
        sum += n
      end

      if q.q_length == k
        result.push(sum)
        sum -= q.dequeue
      end
    end

    result
  end
end
