require_relative 'node'

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

  def delete(node, prev_node)
  end

  def self.generate(*values)
    list = self.new
    values.each { |v| list.append Node.new(v) }
    list
  end
end
