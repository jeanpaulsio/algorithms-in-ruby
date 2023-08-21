require_relative "node"

class LinkedList
  attr_accessor :head, :tail

  def get(n)
    node = head

    begin
      raise IndexError if node.nil?

      (n - 1).times { |_i| node = node.next }
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
      nil
    elsif node == head && prev_node.nil?
      self.head = node.next
    elsif node == tail
      self.tail = prev_node
      prev_node.next = nil
    elsif !prev_node.nil?
      prev_node.next = node.next
    end
  end

  def create_cycle_at(target_node)
    tail.next = target_node
  end

  def cycle?
    fast = head
    slow = head

    until fast.nil?
      fast = fast.next
      return true if fast == slow

      unless fast.nil?
        fast = fast.next
        return true if fast == slow
      end

      slow = slow.next
    end

    false
  end

  def cycle_length
    fast = head
    slow = head

    until fast.nil?
      fast = fast.next
      break if fast == slow

      unless fast.nil?
        fast = fast.next
        break if fast == slow
      end

      slow = slow.next
    end

    return -1 if fast.nil?

    fast = fast.next
    nodes_passed = 1
    until fast == slow
      fast = fast.next
      nodes_passed += 1
    end
    nodes_passed
  end

  def median
    fast = head
    slow = head

    until fast.nil?
      fast = fast.next
      fast = fast.next unless fast.nil?
      break if fast.nil?

      slow = slow.next unless slow.next.nil?
    end

    slow
  end

  def cycle_head
    # Initialize two pointers
    fast = head
    slow = head

    # Move the fast pointer the cycle length
    # By the time the fast pointer reaches the "tail",
    # the slow pointer should be at the same spot as the fast
    # pointer - which is at the head of the cycle
    cycle_length.times { fast = fast.next }

    until fast == slow
      fast = fast.next
      slow = slow.next
    end

    slow
  end

  def self.generate(*values)
    list = new
    values.each { |v| list.append Node.new(v) }
    list
  end
end
