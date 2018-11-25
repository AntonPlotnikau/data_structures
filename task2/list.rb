require './node'

class List
	attr_accessor :head, :tail
	def initialize
		@head = nil #head is a root element
	end	

	def add(value)
		if @head
			get_tail_element.next = Node.new(value)
		else
			@head = Node.new(value)
		end
	end

	def get_tail_element
		node = @head
		return node if !node.next
		while (node = node.next)
			return node if !node.next
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

	def print
    node = @head
    puts node.val
    while (node = node.next)
      puts node.val
    end
  end

  def find_before_deleted(value)
    node = @head
    return false if !node.next
    return node  if node.next.val == value
    while (node = node.next)
      return node if node.next && node.next.val == value
    end
  end

  def find(value)
  	node = @head
  	return false if !node.next
  	return node if node.val == value
  	while(node = node.next)
  		return node if node.val == value
  	end
  end
end