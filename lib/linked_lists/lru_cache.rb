# Problem:
# Implement a data structure for a Least Recently Used (LRU) cache.

require_relative "node"

class LruCache
  attr_accessor :map, :head, :tail, :capacity

  def initialize(capacity)
    @capacity = capacity
    @map = {}
  end

  # Read a value from the cache
  def read(key)
    return -1 if map[key].nil?

    node = map[key]

    # Remove from linked hash table
    remove(key)

    # Add to front of linked hash table
    add(node.key, node.value)

    # Return node's value
    node.value
  end

  # Write a value to the cache
  def write(key, value)
    # Cache is full, evict the head from linked hash table
    remove(head.key) if map.size == capacity

    # Add to front of linked hash table
    add(key, value)
  end

  private

  # Add a node to the end of a Linked Hash Table
  def add(key, value)
    node = Node.new(value, key: key)
    append_to_linked_list(node)
    map[key] = node
  end

  # Remove a node from the Linked Hash Table
  def remove(key)
    return unless map.key? key

    node = map[key]
    remove_from_linked_list(node)
    map.delete(key)
  end

  def append_to_linked_list(node)
    if head.nil?
      self.head = node
    else
      tail.next = node
      node.prev = tail
    end

    self.tail = node
  end

  # Removes a node from a DLL
  def remove_from_linked_list(node)
    node.prev.next = node.next unless node.prev.nil?
    node.next.prev = node.prev unless node.next.nil?
    self.head = node.next if node == head
    self.tail = node.prev if node == tail
  end
end
