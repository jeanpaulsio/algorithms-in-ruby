require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'sort_zero_one_two'

class SortZeroOneTwoTest < Minitest::Test
  def setup
    @ll = LinkedList.generate(2, 0, 1, 0, 2, 1)
  end

  def test_empty_list
    actual = SortZeroOneTwo.run(LinkedList.new)
    assert_nil actual.head
    assert_nil actual.tail
  end

  def test_raises_error_when_node_has_illegal_number
    assert_raises ArgumentError do
      SortZeroOneTwo.run(LinkedList.generate(3))
    end
  end

  def test_sorts_list_of_zeros_ones_and_twos
    assert_linked_list_sorted
  end

  def test_works_when_one_of_the_numbers_is_missing
    @ll = LinkedList.generate(2, 0, 2, 0, 0, 2)

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
