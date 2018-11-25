class Node
	attr_accessor :next, :val
	def initialize(val, next_val=nil)
		@val = val
		@next = next_val
	end
end
