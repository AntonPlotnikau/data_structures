# frozen_string_literal: true

require './node'
require 'pry'

# simply linked list class
class List
  attr_accessor :head, :tail
  def initialize
    @head = nil
  end

  def add(value)
    if @head
      tail_element.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def tail_element
    node = @head
    return node unless node.next

    while (node = node.next)
      return node unless node.next
    end
  end

  def delete(value)
    if @head.val == value
      @head = @head.next
      return
    end

    node = find_before_deleted(value)
    node.next = node.next.next
  end

  def print_list
    node = @head
    while node.next
      print "#{node.val} > "
      node = node.next
    end
    print "#{node.val}\n"
  end

  def find_before_deleted(value)
    node = @head
    return false unless node.next
    return node  if node.next.val == value

    while (node = node.next)
      return node if node.next && node.next.val == value
    end
  end

  def find(value)
    node = @head
    return false unless node.next
    return node if node.val == value

    while (node = node.next)
      return node if node.val == value
    end
  end

  def reverse_list # main part!
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
