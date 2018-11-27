# frozen_string_literal: true

require './bst'

bin_tree = BinarySearchTree.new(4)
bin_tree.add_node(2)
bin_tree.add_node(3)
bin_tree.add_node(6)
bin_tree.add_node(8)
bin_tree.add_node(5)
bin_tree.find_all_paths
