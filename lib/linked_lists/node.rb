class Node
  attr_accessor :next, :value

  def initialize(value)
    @value = value
    @next = nil
  end
end
