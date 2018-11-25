# frozen_string_literal: true

require './list'
require './test'
require 'pry'

list = List.new
list.add(15)
list.add(22)
list.add(43)
list.add(9)
list.add(5)
list.print

puts '------------------------'
list.delete(43)
list.print

puts '------------------------'
list.add(22) # woulnd't add repeated elements

puts '------------------------'
list.reverse_list
