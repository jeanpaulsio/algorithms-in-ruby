# Problem:
# Given a linked list L, split it into 2 lists. List 1 contains L's
# odd nodes. List 2 contains L's even nodes
#
# Given: 2 -> 1 -> 4 -> 5 -> 2 -> 8
# Result:
#   List 1: 2 -> 4 -> 2 (odd nodes)
#   List 2: 1 -> 5 -> 8 (even nodes)

require_relative "linked_list"

class OddEven
  def self.run(list)
    odd = LinkedList.new
    even = LinkedList.new

    stack = 1

    until list.head.nil?
      tail = list.head.next
      list.head.next = nil

      odd.append list.head if stack.odd?
      even.append list.head if stack.even?

      stack += 1
      list.head = tail
    end

    list.tail = nil
    [odd, even]
  end
end
