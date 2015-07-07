class Node
  attr_accessor :value, :next

  def initialize(value=nil)
    @value = value
    @next = nil
  end
end

class SinglyLinkedList
  attr_accessor :head

  def initialize(first_value=nil)
    @head = Node.new(first_value) if first_value
  end

  def prepend(value)
    node = Node.new(value)
    node.next = @head
    @head = node
  end

  def append
  end

  # Returns the last node
  def last
  end

  def insertAfter(node, new_node)
  end

  # Returns the (integer) number of nodes in this list.
  def length
  end

  # Returns the node with needle as value or nil.
  def find(needle)
  end

  def reverse
  end

  def reverse!
  end

  # Extra credit
  def each
  end
end
















