require './node'

class LinkedList
  attr_reader :head, :tail
  def initialize
    @head = nil
    @tail = nil

  end

  def append(node)

    if @head == nil
      @head = node

    elsif @tail.next_node == nil
      @tail.next_node = node
    end

      @tail = node
  end

  def prepend(node)

    if @head == nil
      @head = node

    else
      node.next_node = @head
      @head = node
    end
  end

  def insert(node)
    if @head == nil
      @head = node

    elsif
      @head.next_node = node
    end

  def include?(node)
    true if @head.next_node.next_node.next_node
  else
    false
  end

  def pop(node)


    if @head.next_node.next_node.next_node.next_node == nil
      @head.next_node.next_node.next_node = nil
    end
  end


    def head
      @head
    end

    def tail
      @tail
    end



end





end
