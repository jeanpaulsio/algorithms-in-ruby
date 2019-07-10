# Problem:
# Given a linked lists with values of 0, 1, and 2, sort the list
#
# Given: 2 -> 0 -> 1 -> 0 -> 2 -> 1
# Result: 0 -> 0 -> 1 -> 1 -> 2 -> 2


require_relative 'linked_list'

class SortZeroOneTwo
  def self.run(list)
    l0 = LinkedList.new
    l1 = LinkedList.new
    l2 = LinkedList.new

    pointer = list.head

    until pointer.nil?
      tail = pointer.next
      pointer.next = nil

      case pointer.value
      when 0
        l0.append pointer
      when 1
        l1.append pointer
      when 2
        l2.append pointer
      else
        raise ArgumentError
      end

      pointer = tail
    end

    result = LinkedList.new

    unless l0.head.nil?
      result.append l0.head
      result.tail = l0.tail
    end

    unless l1.head.nil?
      result.append l1.head
      result.tail = l1.tail
    end

    unless l2.head.nil?
      result.append l2.head
      result.tail = l2.tail
    end

    result
  end
end
