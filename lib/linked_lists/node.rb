class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end
end
