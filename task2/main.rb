require './list'
require './test'
list = List.new
list.add(15)
list.add(22)
list.add(43)
list.add(9)
list.add(5)
list.print

puts "------------------------"
list.delete(43)
list.print

puts "------------------------"
list.add(22) #woulnd't add repeated elements

list2 = List.new
list2.add(TestClass.new(2,3))
list2.add(TestClass.new(5,6))
list2.print

puts "------------------------"