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
    if node.nil?
      return
    elsif node == head && prev_node.nil?
      self.head = node.next
    elsif node == tail
      self.tail = prev_node
      prev_node.next = nil
    elsif !prev_node.nil?
      prev_node.next = node.next
    end
  end

  def self.generate(*values)
    list = self.new
    values.each { |v| list.append Node.new(v) }
    list
  end
end
