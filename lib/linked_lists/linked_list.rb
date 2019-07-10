class LinkedList
  attr_accessor :head, :tail

  def get(n)
    node = head

    begin
      raise IndexError if node.nil?
      (n - 1).times { |i| node = node.next }
    rescue IndexError
      puts "No node at index #{n}"
    end

    node
  end

  def append(node)
    if @head.nil?
      @head = node
    else
      @tail.next = node
    end
    @tail = node
  end
end
