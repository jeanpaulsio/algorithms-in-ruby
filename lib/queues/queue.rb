# Problem:
# Implement a queue using a fixed array
# FIFO - First in, first out

class Queue
  class QueueFullError < StandardError; end
  class QueueEmptyError < StandardError; end

  attr_accessor :store, :front, :back, :q_length

  def initialize(size:)
    @store = Array.new(size)
    @front = 0
    @back = 0
    @q_length = 0
  end

  def enqueue(element)
    raise QueueFullError if q_length == store.length
    store[back] = element
    self.back = (back + 1) % store.length
    self.q_length += 1
  end

  def dequeue
    raise QueueEmptyError if q_length.zero?
    element = store[front]
    self.front = (front + 1) % store.length
    self.q_length -= 1
    element
  end
end
