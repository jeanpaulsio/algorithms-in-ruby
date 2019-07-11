require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'node'

class LinkedListTest < Minitest::Test
  def setup
    @ll = LinkedList.generate(1, 2, 3, 4)
  end

  # LinkedList#get
  def test_should_get_a_node_at_position_n
    assert_equal 1, @ll.get(1).value
    assert_equal 2, @ll.get(2).value
    assert_equal 3, @ll.get(3).value
    assert_equal 4, @ll.get(4).value
  end

  def test_should_handle_getting_node_in_empty_list
    assert_output "No node at index 1\n" do
      LinkedList.new.get(1)
    end
  end

  # LinkedList#append
  def test_append_node_to_empty_list
    @ll = LinkedList.new
    assert_nil @ll.head
    assert_nil @ll.tail

    @ll.append Node.new(5)
    assert_equal 5, @ll.head.value
  end

  def test_append_node_to_list_with_items
    new_node = Node.new(5)

    @ll.append(new_node)
    assert_equal 5, @ll.tail.value
    assert_equal 1, @ll.head.value
  end

  # LinkedList#delete
end
