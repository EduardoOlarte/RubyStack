class Node
  attr_accessor :data, :next, :previous

  def initialize(data)
    @data = data
    @next = nil
    @previous = nil
  end

  def to_s
    "Node [data=#{@data}, next=#{@next}]"
  end
end

