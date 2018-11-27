# frozen_string_literal: true

# class For Node in BST
class TreeNode
  attr_accessor :left, :value, :right
  def initialize(value)
    @value = value
    @right = nil
    @left = nil
  end
end
