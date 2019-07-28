class Node
  attr_accessor :next, :prev, :value, :key

  def initialize(value, key: nil)
    @value = value
    @key = key
    @next = nil
    @prev = nil
  end
end
