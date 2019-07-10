class LinkedList
  attr_accessor :head, :tail

  def initialize(head, tail)
    @head = head
    @tail = tail
  end

  def get(n)
    node = head
    (n - 1).times { |i| node = node.next }

    begin
      raise IndexError if node.nil?
    rescue IndexError
      puts "No node at index #{n}"
    end

    node
  end
end
