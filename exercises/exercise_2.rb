require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1  = Store.first;
@store2Arr = Store.limit(2)
@store2 = @store2Arr[2]
@store1.name = "bubbles";
@store1.save;