# LIFO - Last In, First Out
# Add an entry with #push
# Remove an entry with #pop
# Access top element with #peek
# Popping an empty stack is stack underflow
# Pushing to a full stack is stack overflow

class Stack
  attr_accessor :store

  def initialize
    @store = []
  end

  def pop
    store.pop
  end

  def push(element)
    store.push(element)
    self
  end

  def peek
    store.last
  end

  def size
    store.size
  end

  def empty?
    store.empty?
  end

  def self.generate(*values)
    stack = self.new
    values.each { |v| stack.push v }
    stack
  end
end
