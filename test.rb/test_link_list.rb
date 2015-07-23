gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './node'
require './link_list'

class LinkTest < Minitest::Test

def test_it_exists
  assert LinkedList
end

def test_node_exists
  assert Node
end


def test_it_can_append_node
  list = LinkedList.new
  node = Node.new("tyler")
  list.append(node)
  assert_equal "tyler", list.head.data
  assert_equal "tyler", list.tail.data
end

def test_it_can_append_two_nodes
  list = LinkedList.new
  node1 = Node.new("tyler")
  node2 = Node.new("travis")
  list.append(node1)
  list.append(node2)
  assert_equal "tyler", list.head.data
  assert_equal "travis", list.tail.data
end

def test_head_knows_next_node
  list = LinkedList.new
  node1 = Node.new("tyler")
  node2 = Node.new("jeff")
  node3 = Node.new("travis")
  list.append(node1)
  list.append(node2)
  list.append(node3)
  assert_equal "jeff", list.head.next_node.data
  assert_equal "travis", list.head.next_node.next_node.data
end



def test_it_can_prepend_node
  list = LinkedList.new
  node1 = Node.new("tyler")
  node2 = Node.new("travis")
  list.prepend("jeff")
  assert_equal "jeff", list.head
end

def test_it_can_append_two_nodes
  list = LinkedList.new
  node1 = Node.new("tyler")
  node2 = Node.new("jeff")
  list.append(node1)
  list.prepend(node2)
  result = list.head
  expected = node2
  assert_equal expected, result
end

def test_it_can_insert_node
  list = LinkedList.new
  node1 = Node.new("jason")
  node2 = Node.new("phil")
  node3 = Node.new("tyler")
  list.append(node1)
  list.append(node2)
  list.insert(node3)
  assert_equal "tyler", list.head.next_node.data
  assert_equal "phil", list.tail.data
end

def test_node_includes_name
  list = LinkedList.new
  node1 = Node.new("jason")
  node2 = Node.new("phil")
  node3 = Node.new("tyler")
  node4 = Node.new("Brock")
  list.append(node1)
  list.append(node2)
  list.append(node3)
  list.append(node4)
  assert (node4), list.include?(node4)
end

def test_pop
list = LinkedList.new
node1 = Node.new("jason")
node2 = Node.new("phil")
node3 = Node.new("tyler")
node4 = Node.new("Brock")
list.append(node1)
list.append(node2)
list.append(node3)
assert_equal node4, list.pop
end

def test_pop
  list = LinkedList.new
  node1 = Node.new("jason")
  node2 = Node.new("phil")
  node3 = Node.new("tyler")
  node4 = Node.new("Brock")
  list.append(node1)
  list.append(node2)
  list.append(node3)
  list.append(node4)
  assert_equal "Brock", list.pop
end

def test_head
  list = LinkedList.new
  node1 = Node.new("jason")
  node2 = Node.new("phil")
  node3 = Node.new("tyler")
  node4 = Node.new("Brock")
  list.append(node1)
  list.append(node2)
  list.append(node3)
  list.append(node4)
  assert_equal "jason", list.head
end

def test_head
  list = LinkedList.new
  node1 = Node.new("jason")
  node2 = Node.new("phil")
  node3 = Node.new("tyler")
  node4 = Node.new("Brock")
  list.append(node1)
  list.append(node2)
  list.append(node3)
  list.append(node4)
  assert_equal "tyler", list.head
end

def test_head
  list = LinkedList.new
  node1 = Node.new("jason")
  node2 = Node.new("phil")
  node3 = Node.new("tyler")
  node4 = Node.new("Brock")
  list.append(node1)
  list.append(node2)
  list.append(node3)
  list.append(node4)
  assert_equal "jason", list.head
end

end
