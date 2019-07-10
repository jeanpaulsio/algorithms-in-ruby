require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'node'

class LinkedListTest < Minitest::Test
  def setup
    @ll = LinkedList.new
    @n1 = Node.new(1)
    @n2 = Node.new(2)
    @n3 = Node.new(3)
    @n4 = Node.new(4)

    @n1.next = @n2
    @n2.next = @n3
    @n3.next = @n4
  end

  def test_should_get_a_node_at_position_n
    initialize_list

    assert_equal 1, @ll.get(1).value
    assert_equal 2, @ll.get(2).value
    assert_equal 3, @ll.get(3).value
    assert_equal 4, @ll.get(4).value
  end

  def test_should_handle_getting_node_in_empty_list
    assert_output "No node at index 1\n" do
      @ll.get(1)
    end
  end

  def test_append_node_to_empty_list
    assert_nil @ll.head
    assert_nil @ll.tail

    @ll.append Node.new(5)
    assert_equal 5, @ll.head.value
  end

  def test_append_node_to_list_with_items
    initialize_list
    new_node = Node.new(5)

    @ll.append(new_node)
    assert_equal 5, @ll.tail.value
    assert_equal 1, @ll.head.value
  end

  private

    def initialize_list
      @ll.head = @n1
      @ll.tail = @n4
    end
end
