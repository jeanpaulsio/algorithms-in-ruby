require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'odd_even'

class OddEvenTest < Minitest::Test
  def setup
    @ll = LinkedList.generate(2, 1, 4, 5, 2, 8)
  end

  def test_should_return_two_lists
    odd, even = OddEven.run(@ll)

    assert_output("2\n4\n2\n") do
      until odd.head.nil?
        puts odd.head.value
        odd.head = odd.head.next
      end
    end

    assert_output("1\n5\n8\n") do
      until even.head.nil?
        puts even.head.value
        even.head = even.head.next
      end
    end

    # Original list should be nil
    assert_nil @ll.head
    assert_nil @ll.tail
  end
end
