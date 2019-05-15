require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ..
@store1  = Store.first;
puts @store1.name
@store2 = Store.find_by(id: 3)
@store1.name = "bubbles"
@store1.save
puts @store1.name