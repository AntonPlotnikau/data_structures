# frozen_string_literal: true

require './tree_node'

# BST class
class BinarySearchTree
  attr_accessor :root_node
  def initialize(root_node = nil)
    @root_node = TreeNode.new(root_node)
  end

  def add_node(value)
    node = @root_node
    while node
      if value < node.value && node.left.nil?
        node.left = TreeNode.new(value)
      elsif value > node.value && node.right.nil?
        node.right = TreeNode.new(value)
      elsif value < node.value
        node = node.left
      elsif value > node.value
        node = node.right
      else
        return
      end
    end
  end

  def find_all_paths(root = @root_node, path = [])
    return if root.nil?

    path << root.value
    if root.left.nil? && root.right.nil?
      puts path.join(' ~> ')
    else
      find_all_paths(root.left, path.dup)
      find_all_paths(root.right, path.dup)
    end
  end
end
