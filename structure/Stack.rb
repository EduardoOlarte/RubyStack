require_relative 'Node'
class Stack
  attr_reader :size

  def initialize
    @top = nil
    @size = 0
  end

  def push(data)
    new_node = Node.new(data)
    new_node.next = @top
    @top = new_node
    @size += 1
  end

  def pop
    return nil if is_empty?
    
    data = @top.data
    @top = @top.next
    @size -= 1
    data
  end

  def peek
    return nil if is_empty?

    @top.data
  end

  def is_empty?
    @top.nil?
  end

  def exist?(data)
    current = @top
    while current
      return true if current.data == data
      current = current.next
    end
    false
  end

  def size
    @size
  end
end