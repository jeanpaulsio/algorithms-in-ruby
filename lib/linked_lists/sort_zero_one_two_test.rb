require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'node'
require_relative 'sort_zero_one_two'

class SortZeroOneTwoTest < Minitest::Test
  def setup
    @ll = LinkedList.new
    @n1 = Node.new(2)
    @n2 = Node.new(0)
    @n3 = Node.new(1)
    @n4 = Node.new(0)
    @n5 = Node.new(2)
    @n6 = Node.new(1)
  end

  def test_empty_list
    actual = SortZeroOneTwo.run(@ll)
    assert_nil actual.head
    assert_nil actual.tail
  end

  def test_raises_error_when_node_has_illegal_number
    assert_raises ArgumentError do
      illegal_node = Node.new(3)
      @ll.head = illegal_node
      @ll.tail = illegal_node

      SortZeroOneTwo.run(@ll)
    end
  end

  def test_sorts_list_of_zeros_ones_and_twos
    @n1.next = @n2
    @n2.next = @n3
    @n3.next = @n4
    @n4.next = @n5
    @n5.next = @n6

    @ll.head = @n1
    @ll.tail = @n6

    assert_linked_list_sorted
  end

  def test_works_when_one_of_the_numbers_is_missing
    @n1.next = @n5
    @n5.next = @n3
    @n3.next = @n6

    @ll.head = @n1
    @ll.tail = @n3

    assert_linked_list_sorted
  end

  private

    def assert_linked_list_sorted
      actual = SortZeroOneTwo.run(@ll)

      pointer = actual

      until pointer.head.next.nil?
        head_value = pointer.head.value
        next_value = pointer.head.next.value

        assert head_value <= next_value, "#{head_value} should be less than #{next_value}"
        pointer.head = pointer.head.next
      end
    end
end
