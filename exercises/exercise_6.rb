require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
puts "store1.employees.count = " + @store1.employees.count
# Your code goes here ...
@store1.employees.create(
  first_name: "Jill",
  last_name: "Josby",
  hourly_rate: 94
)
@store1.employees.create(
  first_name: "Bruce",
  last_name: "Wayne",
  hourly_rate: 25
)
@store1.employees.create(
  first_name: "Justin",
  last_name: "Justleft",
  hourly_rate: 60
)

puts "store1.employees.count = " + @store1.employees.count
puts "store2.employees.count = " + @store2.employees.count
@store2.employees.create(
  first_name: "Bill",
  last_name: "Melater",
  hourly_rate: 84
)
@store2.employees.create(
  first_name: "Nick",
  last_name: "Holas",
  hourly_rate: 155
)
@store2.employees.create(
  first_name: "Anna",
  last_name: "Neonbrown",
  hourly_rate: 150
)
puts "store2.employees.count = " + @store2.employees.count