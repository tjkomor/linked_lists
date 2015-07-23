gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../node'

class NodeTest < Minitest::Test

def test_it_exits
  assert Node
end

def test_it_accepts_data
  node = Node.new("hello")
  assert_equal "hello", node.data
end

def test_accepts_pointer
  node1 = Node.new("tyler")
  node2 = Node.new("travis")
  node1.next_node = node2
  assert_equal node2, node1.next_node
end


end
