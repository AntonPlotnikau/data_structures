# frozen_string_literal: true

require './list'
require './test'
require 'pry'

numbers = []
10.times { numbers << rand(0..10) }

list = List.new

numbers.each do |item|
  list.add(item)
end

list.print_list
list.reverse_list
list.print_list

puts list.size
