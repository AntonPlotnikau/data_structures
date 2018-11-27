# frozen_string_literal: true

def make_output(array)
  puts array
end

def generate_array(size)
  array = []
  size.to_i.times { array << rand(10..30) }
  array
end

def shift(array, shifts)
  array.concat(array.shift(shifts.to_i))
  array
end

puts 'Array size:'
size = gets.chomp
start_ar = generate_array(size)
make_output(start_ar)

puts 'Enter shift number'
number_of_shifts = gets.chomp

puts 'Reworked Array:'
make_output(shift(start_ar, number_of_shifts))
