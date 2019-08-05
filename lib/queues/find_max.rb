# Problem:
# Implement a Queue with O(1) lookup of the max
# element

# Array#unshift  enqueue
# Array#pop      dequeue
# Array#push     enqueue_front
# Array#shift    dequeue_back
# Array#last     peek (front of queue)

class FindMax
  class EmptyQueueError < StandardError; end

  attr_accessor :main_q, :max_q

  def initialize
    @main_q = []
    @max_q = []
  end

  def enqueue(n)
    # dequeue max_q until n is no longer greater than
    # the last queued item
    main_q.unshift n
    max_q.shift while !max_q.empty? && max_q.first < n
    max_q.unshift n
  end

  def dequeue
    raise EmptyQueueError if main_q.empty?

    max_q.pop if main_q.last == max_q.last
    main_q.pop
  end

  def max
    max_q.last
  end
end
