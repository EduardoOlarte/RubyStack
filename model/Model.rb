require_relative '../structure/Node'
require_relative '../structure/Stack'
class Model
  def initialize
    @stack = Stack.new
  end

  def push_element(data)
    @stack.push(data)
  end

  def pop_element
    @stack.pop
  end

  def peek_element
    @stack.peek
  end

  def size_of_stack
    @stack.size
  end

  def element_exists?(data)
    @stack.exist?(data)
  end
end
