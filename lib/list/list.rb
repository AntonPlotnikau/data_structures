# frozen_string_literal: true

require './node'
require 'pry'

# simply linked list class
class List
  attr_accessor :head

  def initialize(value = nil)
    @head = Node.new(value)
  end

  def add(value)
    new_node = Node.new(value)

    current_node = @head
    current_node = current_node.next while current_node.next
    current_node.next = new_node
  end

  def size
    node = @head
    return 1 unless node.next

    count = 1
    while (node = node.next)
      count += 1
      return count unless node.next
    end
    count
  end

  def print_list
    current_node = @head
    result = []
    while current_node
      result << current_node.val
      current_node = current_node.next
    end
    result.join(' ~ ')
  end

  def reverse_list
    current_node = @head
    previous_node = nil
    next_node = nil
    while current_node
      next_node = current_node.next
      current_node.next = previous_node
      previous_node = current_node
      current_node = next_node
    end
    @head = previous_node
  end
end
